#!/bin/bash

C=$1
B=$2
A=$3
EXTRA=$4

dub --compiler=$C -b=$B -a=$A -c=VST $EXTRA
echo "Removing old libpopss.so"
sudo rm /usr/lib/vst/libpopss.so
echo "Copying libpopss.so to builds/Linux-64-Bit-VST"
sudo cp libpopss.so /usr/lib/vst/
sudo cp libpopss.so builds/Linux-64-Bit-VST

#dub --compiler=$C -b=$B -a=$A -c=VST-Demo $EXTRA
#echo "Copying libmultibandcomp.so to builds/Linux-64-Bit-VST-Demo"
#sudo cp libmultibandcomp.so builds/Linux-64-Bit-VST-Demo/
