/**
* Copyright: Cut Through Recordings 2019
* License:   GPL v3
* Authors:   Ethan Reker
*/

/++ Some code was borrowed from dplug param hints.  Hence the following license header +/
/**
* Copyright: Copyright Auburn Sounds 2015 and later.
* License:   BSL-1.0.
* Authors:   Guillaume Piolat
*/

module paramlabel;

import core.stdc.string;
import core.atomic;

import std.math;
import std.conv;
import std.algorithm;

import dplug.core;
import dplug.gui.element;
import dplug.client.params;


class UIParamLabel : UIElement, IParameterListener
{
public:
nothrow:
@nogc:

    float textSizePx = 11.0f;
    static immutable int maxLength = 5;
    bool _showDecimals;

    this(UIContext context, Parameter param, Font font, RGBA color, int textSize = 10, bool showDecimals = false)
    {
        super(context, flagRaw);
        _param = param;
        _param.addListener(this);
        _font = font;
        _color = color;
        _textSize = textSize;
        _showDecimals = showDecimals;
        _lastParamString = paramString();
        setDirtyWhole();
    }

    ~this()
    {
        _param.removeListener(this);
    }

    const(char)[] paramString() nothrow @nogc
    {
        if(!_showDecimals)
        {
            _param.toDisplayN(_pParamStringBuffer.ptr, 128);
            size_t len = strlen(_pParamStringBuffer.ptr);
            string label = _param.label();
            assert(label.length < 127);
            _pParamStringBuffer[len - 3] = ' ';
            size_t totalLength = len + 1 + label.length;
            _pParamStringBuffer[len - 2..totalLength - 3] = label[];
            return _pParamStringBuffer[0..totalLength - 3];
        }
        else
        {
            _param.toDisplayN(_pParamStringBuffer.ptr, 128);
            size_t len = strlen(_pParamStringBuffer.ptr);
            string label = _param.label();
            assert(label.length < 127);
            _pParamStringBuffer[len] = ' ';
            size_t totalLength = len + 1 + label.length;
            _pParamStringBuffer[len+1..totalLength] = label[];
            return _pParamStringBuffer[0..totalLength];
        }
    }

    // Warning: this routine assume parameter hints are top-level and doesn't respect dirtyRects
    override void onDrawRaw(ImageRef!RGBA rawMap, box2i[] dirtyRects) nothrow @nogc
    {
        float textPosx = position.width * 0.5f;
        float textPosy = position.height * 0.5f;

        foreach(dirtyRect; dirtyRects)
        {
            auto croppedDiffuse = rawMap.cropImageRef(dirtyRect);
            vec2f positionInDirty = vec2f(textPosx, textPosy) - dirtyRect.min;
            croppedDiffuse.fillText(_font, _lastParamString, _textSize, 0.5, _color, positionInDirty.x, positionInDirty.y);
        }
    }

    override void onAnimate(double dt, double time) nothrow @nogc
    {
        _lastParamString = paramString();
        setDirtyWhole();
    }

    override void onParameterChanged(Parameter sender) nothrow @nogc
    {
        _lastParamString = paramString();
        setDirtyWhole();
    }

    override void onBeginParameterEdit(Parameter sender)
    {
    }

    override void onEndParameterEdit(Parameter sender)
    {
    }

protected:
    Parameter _param;

    const(char)[] _lastParamString;
    const(char)[] _tempParamString;

    RGBA _color;

    Font _font;
    int _textSize = 10;

    char[256] _pParamStringBuffer;
}
