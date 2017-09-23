set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\cocoa\derelict\cocoa\appkit.d >obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\cocoa.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\coregraphics.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\coreimage.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\foundation.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\package.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
echo ..\..\..\cocoa\derelict\cocoa\runtime.d >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.json" -I"..\..\..\cocoa" -I"..\..\..\core" -version=VST -version=Have_dplug_cocoa -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_cocoa @obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\appkit.obj >obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\cocoa.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\coregraphics.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\coreimage.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\foundation.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\package.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_cocoa\..\..\..\cocoa\derelict\cocoa\runtime.obj >>obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\cocoa" -I"..\..\..\core" -version=VST -version=Have_dplug_cocoa -version=Have_dplug_core -oflib\dplug_cocoa.lib -map "obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_cocoa\dplug_cocoa.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_cocoa.lib (echo lib\dplug_cocoa.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_cocoa.lib failed!

:noError
