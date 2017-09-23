set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\core\dplug\core\alignedbuffer.d >obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\complex.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\cpuid.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\file.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\fpcontrol.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\lockedqueue.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\math.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\nogc.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\package.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\random.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\ringbuf.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\runtime.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\sharedlib.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\sync.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\thread.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
echo ..\..\..\core\dplug\core\traits.d >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.json" -I"..\..\..\core" -version=VST -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_core @obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\alignedbuffer.obj >obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\complex.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\cpuid.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\file.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\fpcontrol.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\lockedqueue.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\math.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\nogc.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\package.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\random.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\ringbuf.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\runtime.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\sharedlib.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\sync.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\thread.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_core\..\..\..\core\dplug\core\traits.obj >>obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\core" -version=VST -version=Have_dplug_core -oflib\dplug_core.lib -map "obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_core\dplug_core.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_core.lib (echo lib\dplug_core.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_core.lib failed!

:noError
