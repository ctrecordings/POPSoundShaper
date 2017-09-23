set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\graphics\dplug\graphics\color.d >obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\draw.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\drawex.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\font.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\image.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\jpegload.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\mipmap.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\package.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\pngload.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\stb_truetype.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
echo ..\..\..\graphics\dplug\graphics\view.d >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.json" -I"..\..\..\graphics" -I"..\..\..\core" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -version=VST -version=Have_dplug_graphics -version=Have_dplug_core -version=Have_gfm_math -deps="obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_graphics @obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\color.obj >obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\draw.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\drawex.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\font.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\image.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\jpegload.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\mipmap.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\package.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\pngload.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\stb_truetype.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_graphics\..\..\..\graphics\dplug\graphics\view.obj >>obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\graphics" -I"..\..\..\core" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -version=VST -version=Have_dplug_graphics -version=Have_dplug_core -version=Have_gfm_math -oflib\dplug_graphics.lib -map "obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_graphics\dplug_graphics.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_graphics.lib (echo lib\dplug_graphics.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_graphics.lib failed!

:noError
