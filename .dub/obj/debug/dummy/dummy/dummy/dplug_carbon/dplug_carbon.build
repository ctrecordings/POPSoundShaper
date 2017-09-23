set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\carbon\derelict\carbon\audiounit.d >obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\carbon.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\coreaudio.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\corefoundation.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\coregraphics.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\coreservices.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\hitoolbox.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
echo ..\..\..\carbon\derelict\carbon\package.d >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.json" -I"..\..\..\carbon" -I"..\..\..\core" -version=VST -version=Have_dplug_carbon -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_carbon @obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\audiounit.obj >obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\carbon.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\coreaudio.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\corefoundation.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\coregraphics.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\coreservices.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\hitoolbox.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_carbon\..\..\..\carbon\derelict\carbon\package.obj >>obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\carbon" -I"..\..\..\core" -version=VST -version=Have_dplug_carbon -version=Have_dplug_core -oflib\dplug_carbon.lib -map "obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_carbon\dplug_carbon.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_carbon.lib (echo lib\dplug_carbon.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_carbon.lib failed!

:noError
