set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\window\dplug\window\carbonwindow.d >obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
echo ..\..\..\window\dplug\window\cocoawindow.d >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
echo ..\..\..\window\dplug\window\package.d >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
echo ..\..\..\window\dplug\window\win32window.d >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
echo ..\..\..\window\dplug\window\window.d >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
echo ..\..\..\window\dplug\window\x11window.d >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.json" -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\core" -I"..\..\..\cocoa" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\x11" -version=VST -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_core -version=Have_dplug_cocoa -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_x11 -deps="obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_window @obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\carbonwindow.obj >obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\cocoawindow.obj >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\package.obj >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\win32window.obj >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\window.obj >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_window\..\..\..\window\dplug\window\x11window.obj >>obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\window" -I"..\..\..\carbon" -I"..\..\..\core" -I"..\..\..\cocoa" -I"..\..\..\graphics" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\x11" -version=VST -version=Have_dplug_window -version=Have_dplug_carbon -version=Have_dplug_core -version=Have_dplug_cocoa -version=Have_dplug_graphics -version=Have_gfm_math -version=Have_dplug_x11 -oflib\dplug_window.lib -map "obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_window\dplug_window.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_window.lib (echo lib\dplug_window.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_window.lib failed!

:noError
