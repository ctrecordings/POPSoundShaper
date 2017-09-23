set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\au\dplug\au\audiocomponentdispatch.d >obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp
echo ..\..\..\au\dplug\au\client.d >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp
echo ..\..\..\au\dplug\au\cocoaviewfactory.d >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp
echo ..\..\..\au\dplug\au\dfxutil.d >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp
echo ..\..\..\au\dplug\au\package.d >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.json" -I"..\..\..\au" -I"..\..\..\carbon" -I"..\..\..\core" -I"..\..\..\client" -I"..\..\..\cocoa" -version=VST -version=Have_dplug_au -version=Have_dplug_carbon -version=Have_dplug_core -version=Have_dplug_client -version=Have_dplug_cocoa -deps="obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_au @obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_au\..\..\..\au\dplug\au\audiocomponentdispatch.obj >obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_au\..\..\..\au\dplug\au\client.obj >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_au\..\..\..\au\dplug\au\cocoaviewfactory.obj >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_au\..\..\..\au\dplug\au\dfxutil.obj >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_au\..\..\..\au\dplug\au\package.obj >>obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\au" -I"..\..\..\carbon" -I"..\..\..\core" -I"..\..\..\client" -I"..\..\..\cocoa" -version=VST -version=Have_dplug_au -version=Have_dplug_carbon -version=Have_dplug_core -version=Have_dplug_client -version=Have_dplug_cocoa -oflib\dplug_au.lib -map "obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_au\dplug_au.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_au.lib (echo lib\dplug_au.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_au.lib failed!

:noError
