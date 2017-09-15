/**
* Copyright: Copyright Auburn Sounds 2015-2017
* License:   $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
* Authors:   Guillaume Piolat
*/
module gui;

import std.math;

import gfm.math;
import dplug.gui;
import dplug.flatwidgets;
import dplug.client;

import main;
import popmeter;

// Plugin GUI, based on PBRBackgroundGUI.
// If you don't want to use PBR, you not inherit from it.
class PopGUI : FlatBackgroundGUI!("background.png")
{
public:
nothrow:
@nogc:

    PopClient _client;

    Font _font;

    PopMeter meterLeft;
    PopMeter meterRight; 

    this(PopClient client)
    {
        _client = client;
        super(527, 400); // size


        // Sets the number of pixels recomputed around dirtied controls.
        // This is a tradeoff between Emissive light accuracy and speed.
        // A typical value is between 15 and 30 pixels.
        setUpdateMargin(30);

        // All resources are bundled as a string import.
        // You can avoid resource compilers that way.
        // The only cost is that each resource is in each binary, this creates overhead with 
        _font = mallocNew!Font(cast(ubyte[])( import("VeraBd.ttf") ));

        // Builds the UI hierarchy
        // Note: when Dplug has resizeable UI, all positionning is going 
        // to move into a reflow() override.
        // Meanwhile, we hardcode each position.
        RGBA colorMeterIn = RGBA(130, 0, 0, 255);
        RGBA colorMeterOut = RGBA(0, 0, 168, 255);
        meterLeft = mallocNew!PopMeter(context(), colorMeterIn, colorMeterOut, 527, 1000);
        addChild(meterLeft);
        meterLeft.position = box2i(0, 162, 527, 225);
       
        meterRight = mallocNew!PopMeter(context(), colorMeterIn, colorMeterOut, 527, 1000);
        addChild(meterRight);
        meterRight.position = box2i(0, 225, 527, 288);

        int knobWidth = 72;
        int knobHeight = 72;
        int knobX1 = 37;
        int knobX2 = 163;
        int knobX3 = 291;
        int knobX4 = 419;
        int knobY1 = 68;
        int knobY2 = 298;

        OwnedImage!RGBA knobImage = loadOwnedImage(cast(ubyte[])(import("knobOrange.png")));
        OwnedImage!RGBA bipolarKnobImage = loadOwnedImage(cast(ubyte[])(import("bipolar.png")));
        UIFilmstripKnob gainInKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramGainIn), bipolarKnobImage, 128);
        addChild(gainInKnob);

        UIFilmstripKnob amountKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramPop), knobImage, 128);
        addChild(amountKnob);

        UIFilmstripKnob thresholdKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramThreshold), knobImage, 128);
        addChild(thresholdKnob);

        UIFilmstripKnob clipKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramClip), knobImage, 128);
        addChild(clipKnob);

        UIFilmstripKnob sustainKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramSustain), knobImage, 128);
        addChild(sustainKnob);
        UIFilmstripKnob airKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramAir), knobImage, 128);
        addChild(airKnob);
        UIFilmstripKnob mixKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramMix), knobImage, 128);
        addChild(mixKnob);
        UIFilmstripKnob gainOutKnob = mallocNew!UIFilmstripKnob(context(), cast(FloatParameter) _client.param(paramGainOut), bipolarKnobImage, 128);
        addChild(gainOutKnob);

        gainInKnob.position = box2i(knobX1, knobY1, knobX1 + knobWidth, knobY1 + knobHeight);
        amountKnob.position = box2i(knobX2, knobY1, knobX2 + knobWidth, knobY1 + knobHeight);
        thresholdKnob.position = box2i(knobX3, knobY1, knobX3 + knobWidth, knobY1 + knobHeight);
        clipKnob.position = box2i(knobX4, knobY1, knobX4 + knobWidth, knobY1 + knobHeight);

        sustainKnob.position = box2i(knobX1, knobY2, knobX1 + knobWidth, knobY2 + knobHeight);
        airKnob.position = box2i(knobX2, knobY2, knobX2 + knobWidth, knobY2 + knobHeight);
        mixKnob.position = box2i(knobX3, knobY2, knobX3 + knobWidth, knobY2 + knobHeight);
        gainOutKnob.position = box2i(knobX4, knobY2, knobX4 + knobWidth, knobY2 + knobHeight);
    }

    ~this()
    {
        _font.destroyFree();
    }
}
