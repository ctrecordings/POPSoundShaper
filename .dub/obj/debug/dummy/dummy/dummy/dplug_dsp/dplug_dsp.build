set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\dsp\dplug\dsp\delayline.d >obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\envelope.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\fft.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\fir.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\iir.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\noise.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\package.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\smooth.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\wavetable.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
echo ..\..\..\dsp\dplug\dsp\window.d >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.json" -I"..\..\..\dsp" -I"..\..\..\core" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\pfft-1.0.3\pfft" -version=VST -version=Have_dplug_dsp -version=Have_dplug_core -version=Have_gfm_math -version=Have_pfft -deps="obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.dep" -c -odobj/debug/dummy/dummy/dummy/dplug_dsp @obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\delayline.obj >obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\envelope.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\fft.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\fir.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\iir.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\noise.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\package.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\smooth.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\wavetable.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dplug_dsp\..\..\..\dsp\dplug\dsp\window.obj >>obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\dsp" -I"..\..\..\core" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\pfft-1.0.3\pfft" -version=VST -version=Have_dplug_dsp -version=Have_dplug_core -version=Have_gfm_math -version=Have_pfft -oflib\dplug_dsp.lib -map "obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dplug_dsp\dplug_dsp.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\dplug_dsp.lib (echo lib\dplug_dsp.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\dplug_dsp.lib failed!

:noError
