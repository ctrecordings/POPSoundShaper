set PATH=.\bin;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\Common7\IDE;C:\Program Files (x86)\Windows Kits\8.1\bin\x86;.\windows\bin;%PATH%

echo ..\gui.d >obj\debug\dummy\popss\popss.build.rsp
echo ..\main.d >>obj\debug\dummy\popss\popss.build.rsp
echo ..\popmeter.d >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\ddsp.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_au.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_dsp.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\pfft.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_flat-widgets.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_pbr-widgets.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_gui.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_window.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_carbon.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_cocoa.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_graphics.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\gfm_math.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_x11.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_vst.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_client.lib >>obj\debug\dummy\popss\popss.build.rsp
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_core.lib >>obj\debug\dummy\popss\popss.build.rsp

dmd -g -debug -w -op -X -Xf"obj\debug\dummy\popss\popss.json" -I".." -I"..\..\..\..\Ddsp\util" -I"..\..\..\..\Ddsp\effect" -I"..\..\..\..\Ddsp\filter" -I"..\..\..\..\Ddsp\osc" -I"..\..\..\core" -I"..\..\..\au" -I"..\..\..\carbon" -I"..\..\..\client" -I"..\..\..\cocoa" -I"..\..\..\dsp" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\gfm-6.2.10\gfm\math" -I"..\..\..\..\..\..\AppData\Roaming\dub\packages\pfft-1.0.3\pfft" -I"..\..\..\flatwidgets" -I"..\..\..\graphics" -I"..\..\..\gui" -I"..\..\..\window" -I"..\..\..\x11" -I"..\..\..\pbrwidgets" -I"..\..\..\vst" -J"..\gfx" -J"..\fonts" -J".." -version=VST -version=Have_popss -version=Have_ddsp -version=Have_dplug_core -version=Have_dplug_au -version=Have_dplug_carbon -version=Have_dplug_client -version=Have_dplug_cocoa -version=Have_dplug_dsp -version=Have_gfm_math -version=Have_pfft -version=Have_dplug_flat_widgets -version=Have_dplug_graphics -version=Have_dplug_gui -version=Have_dplug_window -version=Have_dplug_x11 -version=Have_dplug_pbr_widgets -version=Have_dplug_vst -deps="obj\debug\dummy\popss\popss.dep" -c -odobj/debug/dummy/popss @obj\debug\dummy\popss\popss.build.rsp
if errorlevel 1 goto reportError

set LIB=
echo. > C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo obj\debug\dummy\popss\..\gui.obj+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo obj\debug\dummy\popss\..\main.obj+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo obj\debug\dummy\popss\..\popmeter.obj,C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\popss.dll,"obj\debug\dummy\popss\popss.map",C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\ddsp.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_au.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_dsp.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\pfft.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_flat-widgets.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_pbr-widgets.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_gui.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_window.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_carbon.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_cocoa.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_graphics.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\gfm_math.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_x11.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_vst.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_client.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\lib\dplug_core.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo gdi32.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo user32.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo user32.lib+ >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
echo kernel32.lib/NOMAP/CO/NOI/DELEXE >> C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg

"C:\Program Files (x86)\VisualD\pipedmd.exe" -deps obj\debug\dummy\popss\popss.lnkdep link.exe @C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\.dub\obj\debug\dummy\popss\popss.build.lnkarg
if errorlevel 1 goto reportError
if not exist C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\popss.dll (echo C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\popss.dll not created! && goto reportError)

goto noError

:reportError
echo Building C:\Users\Reker\Documents\PluginDev\Dplug\examples\popss\popss.dll failed!

:noError
