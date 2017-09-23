set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\gui\dplug\gui\boxlist.d >obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\bufferedelement.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\compositor.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\context.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\element.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\graphics.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
echo ..\..\..\gui\dplug\gui\package.d >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.json" -I"..\..\..\gui" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_gui -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -deps="obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_gui @obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\boxlist.obj >obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\bufferedelement.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\compositor.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\context.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\element.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\graphics.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_gui\..\..\..\gui\dplug\gui\package.obj >>obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\gui" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_gui -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -oflib\dplug_gui.lib -map "obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_gui\dplug_gui.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_gui.lib (echo lib\dplug_gui.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_gui.lib failed!

:noError
