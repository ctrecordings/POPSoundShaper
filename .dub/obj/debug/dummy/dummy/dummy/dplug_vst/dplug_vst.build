set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\vst\dplug\vst\aeffect.d >obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.rsp
echo ..\..\..\vst\dplug\vst\aeffectx.d >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.rsp
echo ..\..\..\vst\dplug\vst\client.d >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.rsp
echo ..\..\..\vst\dplug\vst\package.d >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.json" -I"..\..\..\vst" -I"..\..\..\client" -I"..\..\..\core" -version=VST -version=Have_dplug_vst -version=Have_dplug_client -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_vst @obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_vst\..\..\..\vst\dplug\vst\aeffect.obj >obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_vst\..\..\..\vst\dplug\vst\aeffectx.obj >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_vst\..\..\..\vst\dplug\vst\client.obj >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_vst\..\..\..\vst\dplug\vst\package.obj >>obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\vst" -I"..\..\..\client" -I"..\..\..\core" -version=VST -version=Have_dplug_vst -version=Have_dplug_client -version=Have_dplug_core -oflib\dplug_vst.lib -map "obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_vst\dplug_vst.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_vst.lib (echo lib\dplug_vst.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_vst.lib failed!

:noError
