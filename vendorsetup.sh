#!/bin/bash

gclang=prebuilts/clang/host/linux-x86/gabuters-clang

if [ ! -d $gclang ]; then
echo "Gabuters clang is empty! cloning.."
git clone https://github.com/Gabuters-Dev/gabuters-clang $gclang
else
echo "Gabuters clang exist, skipping.."
fi

git clone https://github.com/Gabuters-Dev/vendor_xiaomi_dirac -b part vendor/xiaomi/part
