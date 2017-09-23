set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\pbrwidgets\dplug\pbrwidgets\bargraph.d >obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\knob.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\label.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\logo.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\onoffswitch.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\package.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\panel.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\paramhint.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\pbrbackgroundgui.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
echo ..\..\..\pbrwidgets\dplug\pbrwidgets\slider.d >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.json" -I"..\..\..\pbrwidgets" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\gui" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_pbr_widgets -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_gui -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -deps="obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_pbr-widgets @obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\bargraph.obj >obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\knob.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\label.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\logo.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\onoffswitch.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\package.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\panel.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\paramhint.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\pbrbackgroundgui.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_pbr-widgets\..\..\..\pbrwidgets\dplug\pbrwidgets\slider.obj >>obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\pbrwidgets" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\gui" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_pbr_widgets -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_gui -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -oflib\dplug_pbr-widgets.lib -map "obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_pbr-widgets\dplug_pbr-widgets.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_pbr-widgets.lib (echo lib\dplug_pbr-widgets.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_pbr-widgets.lib failed!

:noError
