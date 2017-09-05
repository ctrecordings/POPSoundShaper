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
        super(400, 400); // size


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
        RGBA colorMeterIn = RGBA(255, 0, 0, 255);
        RGBA colorMeterOut = RGBA(0, 0, 255, 255);
        meterLeft = mallocNew!PopMeter(context(), colorMeterIn, colorMeterOut, 400, 1000);
        addChild(meterLeft);
        meterLeft.position = box2i(0, 162, 400, 225);
       
        meterRight = mallocNew!PopMeter(context(), colorMeterIn, colorMeterOut, 400, 1000);
        addChild(meterRight);
        meterRight.position = box2i(0, 225, 400, 288);
    }

    ~this()
    {
        _font.destroyFree();
    }
}
