module popmeter;

import dplug.graphics;
import dplug.gui;
import dplug.core.nogc;

import ddsp.util.scale;

import std.algorithm;

class PopMeter : UIBufferedElement
{
    this(UIContext context, RGBA inColor, RGBA outColor, uint size, uint windowSize) nothrow @nogc
    {
        super(context);
        _inColor = inColor;
        _outColor = outColor;
        _size = size;
        _windowSize = windowSize;
        inBars = mallocSlice!float(_size);
        outBars = mallocSlice!float(_size);
        writeIndex = 0;
        foreach(index; 0..size)
        {
            inBars[index] = 0.005;
            outBars[index] = 0.005;
        }

        scale.initialize(RealRange(0.00001f, 1.0f), RealRange(0.00001f, 1.0f));
    }
    
    override void onDrawBuffered(ImageRef!RGBA diffuseMap, 
                                 ImageRef!L16 depthMap, 
                                 ImageRef!RGBA materialMap, 
                                 ImageRef!L8 diffuseOpacity,
                                 ImageRef!L8 depthOpacity,
                                 ImageRef!L8 materialOpacity) nothrow @nogc
    {
        assert(_size <= diffuseMap.w);
        
        for(int j = 0; j < diffuseMap.h; ++j)
        {
            auto output = diffuseMap.scanline(j);
            for(int i = 0; i < diffuseMap.w; ++i)
            {
                //Starts from the most recently added value and then moves along the buffers based on i
                //This way the the meter should seem to move. Each time the index increments, all of the data
                //should move 1px to the left
                size_t index = (writeIndex + i) % _size;
                float inBarHeight = inBars[index];
                float outBarHeight = outBars[index];
                
                int inY = cast(int)(diffuseMap.h * (1 - inBarHeight));
                int outY = cast(int)(diffuseMap.h * (1 - outBarHeight));
                RGBA blended = RGBA(0, 0, 0,255);
                ubyte alpha = 255;
                if(j >= inY)
                {
                    blended = RGBA.op!q{.blend(a, b, c)} (_inColor, blended, alpha);
                }
                if(j >= outY)
                {
                    blended = RGBA.op!q{.blend(a, b, c)} (_outColor, blended, cast(ubyte)(alpha/2));
                }
                output[i] = blended;
            }
        }
        
        {
            diffuseOpacity.fillAll(L8(255));
        }
    }
    
    void pushBackValues(float input, float output, float sampleRate) nothrow @nogc
    {
        float samplesPerSec = sampleRate / 1000;
        ++counter;
        if(counter >= samplesPerSec / speed)
        {
            if(++writeIndex >= _size)
            {
                writeIndex = 0;
            }
            float inConv = clamp(input, 0.0f, 1.0f);
            float outConv = clamp(output, 0.0f, 1.0f);
            inBars[writeIndex] = scale.convert(inConv);
            outBars[writeIndex] = scale.convert(outConv);
            setDirtyWhole();
            counter = 0;
        }
    
    }
    
private:
    RGBA _inColor;
    RGBA _outColor;
    float[] inBars;
    float[] outBars;
    
    size_t writeIndex;
    
    uint _size;
    uint _windowSize;

    LogToLinearScale scale = new LogToLinearScale();

    float _sampleRate;
    int counter;
    float speed = 40;
}