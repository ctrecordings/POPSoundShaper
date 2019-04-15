# POP Sound Shaper

 A free clipper/compressor plugin with the purpose of giving tracks more pop.  Compiles to VST/VST3/LV2/AU on Windows/MacOS/Linux.

 This plugin is written entirely in D and relies on the [Dplug](https://github.com/AuburnSounds/Dplug) and [Ddsp](https://github.com/ctrecordings/Ddsp) dub packages.

 ## How To Build
---
|Format     |Command                                                                                |
|:----------|:--------------------------------------------------------------------------------------|
|VST        |`dub -c VST`                                                                           |
|VST3       |`dub -c VST3`                                                                          |
|LV2        |See Dplug [getting started](https://github.com/AuburnSounds/Dplug/wiki/Getting-Started)|
|AU         |See Dplug [getting started](https://github.com/AuburnSounds/Dplug/wiki/Getting-Started)|

## Important
---
To build VST and VST3 plugins you will need to obtain the steinberg VST SDK.  You will need to add an environement variable with paths to each SDK.

For example on linux & MacOS `export VST2_SDK=/my/path/to/VST2_SDK`