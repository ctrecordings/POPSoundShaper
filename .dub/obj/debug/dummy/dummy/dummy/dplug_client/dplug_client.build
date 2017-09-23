set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\client\dplug\client\binrange.d >obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\client.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\daw.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\dllmain.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\graphics.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\midi.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\package.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\params.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
echo ..\..\..\client\dplug\client\preset.d >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.json" -I"..\..\..\client" -I"..\..\..\core" -version=VST -version=Have_dplug_client -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_client @obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\binrange.obj >obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\client.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\daw.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\dllmain.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\graphics.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\midi.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\package.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\params.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_client\..\..\..\client\dplug\client\preset.obj >>obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\client" -I"..\..\..\core" -version=VST -version=Have_dplug_client -version=Have_dplug_core -oflib\dplug_client.lib -map "obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_client\dplug_client.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_client.lib (echo lib\dplug_client.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_client.lib failed!

:noError
