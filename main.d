/**
* Copyright: Cut Through Recordings 2017
* License:   Proprietery
* Authors:   Ethan Reker
*/
module main;

import std.math;
import std.algorithm;

import dplug.core,
       dplug.client,
       dplug.dsp;

import gui;

import ddsp.util.functions;
//import ddsp.effect.comp;
import ddsp.util.envelope;
import ddsp.filter.lowpass;
import ddsp.filter.highpass;
import ddsp.filter.peak;
import ddsp.effect.compressor;

mixin(DLLEntryPoint!());

version(VST)
{
    import dplug.vst;
    mixin(VSTEntryPoint!PopClient);
}

version(AU)
{
    import dplug.au;
    mixin(AUEntryPoint!PopClient);
}

enum : int
{
    paramGainIn,
    paramPop,
    paramThreshold,
    paramClip,
    paramThump,
    paramAir,
    paramMix,
    paramGainOut
}


/// Example mono/stereo distortion plugin.
final class PopClient : dplug.client.Client
{
public:
nothrow:
@nogc:

    this()
    {
        _inputDetector = makeVec!EnvelopeDetector;
        _outputDetector = makeVec!EnvelopeDetector;

        _lowpass = makeVec!LinkwitzRileyLP;
        _highpass = makeVec!LinkwitzRileyHP;
        _bandShelfLow = makeVec!BandShelf;

        _popComp = makeVec!Compressor;
        _sustainer = makeVec!Compressor;

        foreach(channel; 0..2)
        {
            _inputDetector.pushBack(mallocNew!EnvelopeDetector());
            _outputDetector.pushBack(mallocNew!EnvelopeDetector());

            _lowpass.pushBack(mallocNew!LinkwitzRileyLP);
            _highpass.pushBack(mallocNew!LinkwitzRileyHP());
            _bandShelfLow.pushBack(mallocNew!BandShelf);

            _popComp.pushBack(mallocNew!Compressor());
            _sustainer.pushBack(mallocNew!Compressor());
        }
    }

    override PluginInfo buildPluginInfo()
    {
        // Plugin info is parsed from plugin.json here at compile time
        static immutable PluginInfo pluginInfo = parsePluginInfo(import("plugin.json"));
        return pluginInfo;
    }

    override Parameter[] buildParameters()
    {
        auto params = makeVec!Parameter();
        params.pushBack( mallocNew!LinearFloatParameter(paramGainIn, "input gain", "dB", -12.0f, 12.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramPop, "amount", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramThreshold, "threshold", "dB", -96.0f, 0.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramClip, "clip", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramThump, "thump", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramAir, "air", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramMix, "mix", "%", 0.0f, 100.0f, 100.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramGainOut, "output gain", "dB", -12.0f, 12.0f, 0.0f));
        return params.releaseData();
    }

    override LegalIO[] buildLegalIO()
    {
        auto io = makeVec!LegalIO();
        io.pushBack(LegalIO(1, 1));
        io.pushBack(LegalIO(1, 2));
        io.pushBack(LegalIO(2, 1));
        io.pushBack(LegalIO(2, 2));
        return io.releaseData();
    }

    // This override is also optional. It allows to split audio buffers in order to never
    // exceed some amount of frames at once.
    // This can be useful as a cheap chunking for parameter smoothing.
    // Buffer splitting also allows to allocate statically or on the stack with less worries.
    override int maxFramesInProcess() const //nothrow @nogc
    {
        return 512;
    }

    override void reset(double sampleRate, int maxFrames, int numInputs, int numOutputs) nothrow @nogc
    {
        // Clear here any state and delay buffers you might have.

        assert(maxFrames <= 512); // guaranteed by audio buffer splitting

        foreach(channel; 0..2)
        {
            _inputDetector[channel].setSampleRate(sampleRate);
            _outputDetector[channel].setSampleRate(sampleRate);
            _lowpass[channel].setSampleRate(sampleRate);
            _lowpass[channel].setFrequency(300);
            _highpass[channel].setSampleRate(sampleRate);
            _highpass[channel].setFrequency(300);
            _bandShelfLow[channel].setSampleRate(sampleRate);
            _bandShelfLow[channel].setFrequency(150.0f);
            _popComp[channel].setSampleRate(sampleRate);
            _sustainer[channel].setSampleRate(sampleRate);
        }
    }

    override void processAudio(const(float*)[] inputs, float*[]outputs, int frames,
                               TimeInfo info) nothrow @nogc
    {
        assert(frames <= 512); // guaranteed by audio buffer splitting

        int numInputs = cast(int)inputs.length;
        int numOutputs = cast(int)outputs.length;

        int minChan = numInputs > numOutputs ? numOutputs : numInputs;

        float inputGain = dedibelToFloat(readFloatParamValue(paramGainIn));
        float outputGain = dedibelToFloat(readFloatParamValue(paramGainOut));
        float popAmount = (readFloatParamValue(paramPop) / 10.0f) + 1;
        float mix = readFloatParamValue(paramMix) / 100.0f;
        float threshold = readFloatParamValue(paramThreshold);
        float clipAmount = readFloatParamValue(paramClip) / 3;
        float clipInv = 1 / clipAmount;

        float air = clamp(readFloatParamValue(paramAir) / 100.0f, 0, 0.99);
        float k = 2 * air / (1 - air);

        //Convert to range of 0-12db
        float thump = readFloatParamValue(paramThump) / 8.333f;

        foreach(channel; 0..2)
        {
            _inputDetector[channel].setEnvelope(5.0f, 20.0f);
            _outputDetector[channel].setEnvelope(5.5f,20.0f);
            _bandShelfLow[channel].setGain(thump);
            _popComp[channel].setParams(100.0f, 200.0f, threshold, popAmount, 1.0f);
            
        }

        bool enabled = true;

        float[2] RMS = 0;

        if (enabled)
        {
            for (int chan = 0; chan < minChan; ++chan)
            {
                for (int f = 0; f < frames; ++f)
                {
                    /// Apply input gain
                    float inputSample = inputGain * inputs[chan][f];
                    _inputDetector[chan].detect(inputSample);

                    /// Apply first compressor for pop
                    float outputSample = _popComp[chan].getNextSample(inputSample);

                    /// Clip the signal
                    if(clipAmount > 0)
                        outputSample = clipInv * atan( outputSample * clipAmount);

                    /// apply low boost
                    outputSample = _bandShelfLow[chan].getNextSample(outputSample);

                    /// Split the signal into two bands
                    //float lowband = _lowpass[chan].getNextSample(outputSample);
                    //float highband = _highpass[chan].getNextSample(outputSample);

                    /// apply distortion to high band
                    ///highband = (1 + k) * highband / ( 1 + k * abs(highband));

                    /// Sum the bands back together;
                    ///outputSample = lowband - highband;

                    /// Apply the mix
                    outputSample = outputSample * (mix) + inputSample * (1 - mix);


                    /// apply output gain
                    outputSample *= outputGain;
                    outputs[chan][f] =  outputSample;

                    /// Feed the output RMS computation
                    _outputDetector[chan].detect(outputSample);
                }
            }
        }
        else
        {
            // Bypass mode
            for (int chan = 0; chan < minChan; ++chan)
            {
                outputs[chan][0..frames] = inputs[chan][0..frames];
                _outputDetector[chan].detect(0);
                _inputDetector[chan].detect(0);
            }
        }

        // fill with zero the remaining channels
        for (int chan = minChan; chan < numOutputs; ++chan)
        {
            outputs[chan][0..frames] = 0; // D has array slices assignments and operations
            //_outputDetector[chan].detect(0);
            //_inputDetector[chan].detect(0);
        }

        // Update RMS meters from the audio callback
        // The IGraphics object must be acquired and released, so that it does not
        // disappear under your feet
        if (PopGUI gui = cast(PopGUI) graphicsAcquire())
        {
            gui.meterLeft.pushBackValues(_inputDetector[0].getEnvelope(), _outputDetector[0].getEnvelope());
            gui.meterRight.pushBackValues(_inputDetector[1].getEnvelope(), _outputDetector[1].getEnvelope());
            graphicsRelease();
        }
    }

    override IGraphics createGraphics()
    {
        return mallocNew!PopGUI(this);
    }

private:

    Vec!EnvelopeDetector _inputDetector;
    Vec!EnvelopeDetector _outputDetector;

    Vec!LinkwitzRileyLP _lowpass;
    Vec!LinkwitzRileyHP _highpass;
    Vec!BandShelf _bandShelfLow;

    Vec!Compressor _popComp;
    Vec!Compressor _sustainer;

}
