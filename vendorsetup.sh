#!/bin/bash

rm -rf hardware/qcom-caf/msm8996/media hardware/qcom-caf/msm8996/audio hardware/qcom-caf/msm8996/display
git clone https://github.com/Jabiyeff-Project/android_hardware_qcom_display -b 11.0 hardware/qcom-caf/msm8996/display
git clone https://github.com/Jabiyeff-Project/android_hardware_qcom_audio -b 11.0 hardware/qcom-caf/msm8996/audio
git clone https://github.com/Jabiyeff-Project/android_hardware_qcom_media -b 11.0 hardware/qcom-caf/msm8996/media
git clone https://github.com/Gabuters-Dev/vendor_xiaomi_dirac -b part vendor/xiaomi/part
