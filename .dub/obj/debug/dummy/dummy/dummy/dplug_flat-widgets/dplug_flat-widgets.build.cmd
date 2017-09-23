set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\flatwidgets\dplug\flatwidgets\flatbackgroundgui.d >obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp
echo ..\..\..\flatwidgets\dplug\flatwidgets\flatknob.d >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp
echo ..\..\..\flatwidgets\dplug\flatwidgets\flatslider.d >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp
echo ..\..\..\flatwidgets\dplug\flatwidgets\flatswitch.d >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp
echo ..\..\..\flatwidgets\dplug\flatwidgets\package.d >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.json" -I"..\..\..\flatwidgets" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\gui" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_flat_widgets -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_gui -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -deps="obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_flat-widgets @obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_flat-widgets\..\..\..\flatwidgets\dplug\flatwidgets\flatbackgroundgui.obj >obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_flat-widgets\..\..\..\flatwidgets\dplug\flatwidgets\flatknob.obj >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_flat-widgets\..\..\..\flatwidgets\dplug\flatwidgets\flatslider.obj >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_flat-widgets\..\..\..\flatwidgets\dplug\flatwidgets\flatswitch.obj >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_flat-widgets\..\..\..\flatwidgets\dplug\flatwidgets\package.obj >>obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\flatwidgets" -I"..\..\..\client" -I"..\..\..\core" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\gui" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\cocoa" -I"..\..\..\x11" -version=VST -version=Have_dplug_flat_widgets -version=Have_dplug_client -version=Have_dplug_core -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_gui -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_cocoa -version=Have_dplug_x11 -oflib\dplug_flat-widgets.lib -map "obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_flat-widgets\dplug_flat-widgets.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_flat-widgets.lib (echo lib\dplug_flat-widgets.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_flat-widgets.lib failed!

:noError
