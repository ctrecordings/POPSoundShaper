set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\box.d >obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\funcs.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\matrix.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\package.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\quaternion.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\shapes.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\simplerng.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
echo ..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\vector.d >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.json" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -version=VST -version=Have_gfm_math -deps="obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.dep" -c -odobj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math @obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\box.obj >obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\funcs.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\matrix.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\package.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\quaternion.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\shapes.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\simplerng.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/dummy/dummy/gfm_math\..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math\gfm\math\vector.obj >>obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -version=VST -version=Have_gfm_math -oflib\gfm_math.lib -map "obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\dummy\dummy\gfm_math\gfm_math.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\gfm_math.lib (echo lib\gfm_math.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\gfm_math.lib failed!

:noError
