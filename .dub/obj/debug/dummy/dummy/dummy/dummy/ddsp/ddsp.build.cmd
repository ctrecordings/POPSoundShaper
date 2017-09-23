set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\..\..\..\Ddsp\effect\ddsp\effect\aeffect.d >obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\effect\ddsp\effect\compressor.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\effect\ddsp\effect\digitaldelay.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\effect\ddsp\effect\dynamics.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\effect\ddsp\effect\expander.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\effect\ddsp\effect\package.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\allpass.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\biquad.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\highpass.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\lowpass.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\package.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\filter\ddsp\filter\shelf.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\osc\ddsp\osc\cfoscillator.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\osc\ddsp\osc\wtoscillator.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\buffer.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\envelope.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\functions.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\package.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\scale.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\time.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
echo ..\..\..\..\Ddsp\util\ddsp\util\wave.d >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.json" -I"..\..\..\..\Ddsp\util" -I"..\..\..\..\Ddsp\effect" -I"..\..\..\..\Ddsp\filter" -I"..\..\..\..\Ddsp\osc" -I"..\..\..\core" -version=VST -version=Have_ddsp -version=Have_dplug_core -deps="obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.dep" -c -odobj/debug/dummy/dummy/dummy/dummy/ddsp @obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.rsp
if errorlevel 1 goto reportError


echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\aeffect.obj >obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\compressor.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\digitaldelay.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\dynamics.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\expander.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\effect\ddsp\effect\package.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\allpass.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\biquad.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\highpass.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\lowpass.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\package.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\filter\ddsp\filter\shelf.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\osc\ddsp\osc\cfoscillator.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\osc\ddsp\osc\wtoscillator.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\buffer.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\envelope.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\functions.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\package.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\scale.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\time.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
echo obj/debug/dummy/dummy/dummy/dummy/ddsp\..\..\..\..\Ddsp\util\ddsp\util\wave.obj >>obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" dmd -g -debug -w -lib -op -I"..\..\..\..\Ddsp\util" -I"..\..\..\..\Ddsp\effect" -I"..\..\..\..\Ddsp\filter" -I"..\..\..\..\Ddsp\osc" -I"..\..\..\core" -version=VST -version=Have_ddsp -version=Have_dplug_core -oflib\ddsp.lib -map "obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.map" -L/NOMAP @obj\debug\dummy\dummy\dummy\dummy\ddsp\ddsp.build.lnkarg
if errorlevel 1 goto reportError
if not exist lib\ddsp.lib (echo lib\ddsp.lib not created! && goto reportError)

goto noError

:reportError
echo Building lib\ddsp.lib failed!

:noError
