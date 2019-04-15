module bitmap;

import core.stdc.string;
import core.atomic;

import std.math;
import std.conv;
import std.algorithm;

import dplug.core;
import dplug.gui.element;
import dplug.client.params;

class UIBitmap : UIElement
{
public:
    this(UIContext context, OwnedImage!RGBA image) nothrow @nogc
    {
        super(context, flagRaw);
        _image = image;
    }

    override void onDrawRaw(ImageRef!RGBA rawMap, box2i[] dirtyRects) nothrow @nogc
    {
        foreach(dirtyRect; dirtyRects)
		{
			auto croppedDiffuseIn = _image.crop(dirtyRect);
			auto croppedDiffuseOut = rawMap.crop(dirtyRect);


			int w = dirtyRect.width;
			int h = dirtyRect.height;

			for(int j = 0; j < h; ++j){
				RGBA[] input = croppedDiffuseIn.scanline(j);
				RGBA[] output = croppedDiffuseOut.scanline(j);

				for(int i = 0; i < w; ++i){
                    ubyte alpha = input[i].a;
                    RGBA blended = RGBA.op!q{.blend(a, b, c)} (input[i], output[i], alpha);
                    output[i] = blended;
				}
			}
		}
    }

private:
    OwnedImage!RGBA _image;
}