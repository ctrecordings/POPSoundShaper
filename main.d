/**
* Copyright: Cut Through Recordings 2017
* License:   Proprietery
* Authors:   Ethan Reker
*/
module main;

import std.math;

import dplug.core,
       dplug.client,
       dplug.dsp;

import gui;

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
    paramPop,
    paramThreshold,
    paramClip,
    paramSustain,
    paramAir,
    paramMix
}


/// Example mono/stereo distortion plugin.
final class PopClient : dplug.client.Client
{
public:
nothrow:
@nogc:

    this()
    {
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
        params.pushBack( mallocNew!LinearFloatParameter(paramPop, "amount", "%", 0.0f, 1.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramThreshold, "threshold", "dB", -96.0f, 0.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramClip, "clip", "dB", -96.0f, 0.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramSustain, "sustain", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramAir, "air", "%", 0.0f, 100.0f, 0.0f));
        params.pushBack( mallocNew!LinearFloatParameter(paramMix, "mix", "%", 0.0f, 100.0f, 0.0f));
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
            _inputRMS[channel].initialize(sampleRate);
            _outputRMS[channel].initialize(sampleRate);
        }
    }

    override void processAudio(const(float*)[] inputs, float*[]outputs, int frames,
                               TimeInfo info) nothrow @nogc
    {
        assert(frames <= 512); // guaranteed by audio buffer splitting

        int numInputs = cast(int)inputs.length;
        int numOutputs = cast(int)outputs.length;

        int minChan = numInputs > numOutputs ? numOutputs : numInputs;

        bool enabled = true;

        float[2] RMS = 0;

        if (enabled)
        {
            for (int chan = 0; chan < minChan; ++chan)
            {
                for (int f = 0; f < frames; ++f)
                {
                    float inputSample = inputs[chan][f];

                    // Feed the input RMS computation
                    _inputRMS[chan].nextSample(inputSample);

                    float outputSample = 0.5f * inputSample;
                    
                    outputs[chan][f] =  outputSample;

                    // Feed the output RMS computation
                    _outputRMS[chan].nextSample(outputSample);
                }
            }
        }
        else
        {
            // Bypass mode
            for (int chan = 0; chan < minChan; ++chan)
            {
                outputs[chan][0..frames] = inputs[chan][0..frames];
                _outputRMS[chan].nextSample(0);
                _inputRMS[chan].nextSample(0);
            }
        }

        // fill with zero the remaining channels
        for (int chan = minChan; chan < numOutputs; ++chan)
        {
            outputs[chan][0..frames] = 0; // D has array slices assignments and operations
            _outputRMS[chan].nextSample(0);
            _inputRMS[chan].nextSample(0);
        }

        // Update RMS meters from the audio callback
        // The IGraphics object must be acquired and released, so that it does not
        // disappear under your feet
        if (PopGUI gui = cast(PopGUI) graphicsAcquire())
        {
            gui.meterLeft.pushBackValues(_inputRMS[0].RMS(), _outputRMS[0].RMS());
            gui.meterRight.pushBackValues(_inputRMS[1].RMS(), _outputRMS[1].RMS());
            graphicsRelease();
        }
    }

    override IGraphics createGraphics()
    {
        return mallocNew!PopGUI(this);
    }

private:
    CoarseRMS!float[2] _inputRMS;
    CoarseRMS!float[2] _outputRMS;
}

