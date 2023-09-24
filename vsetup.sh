#!/bin/bash

cd hallium || exit 1

# Kernel for Universal9611-common
rm -rf kernel/samsung/universal9611
git clone https://github.com/ProjectElixir-Devices/kernel_samsung_universal9611 kernel/samsung/universal9611 --depth 1 --single-branch

# Common tree for Universal9611-common
rm -rf device/samsung/universal9611-common
git clone https://github.com/ProjectElixir-Devices/device_samsung_universal9611-common device/samsung/universal9611-common --depth 1

# Vendor blobs for M31s
rm -rf vendor/samsung/m31
git clone https://github.com/Exynos9611-Development/vendor_samsung_m31 vendor/samsung/m31 --depth 1

# Some additional interfaces
rm -rf hardware/samsung-ext/interfaces
git clone https://github.com/Exynos9611-Development/hardware_samsung-extra_interfaces/ hardware/samsung-ext/interfaces --depth 1

# Common vendor blobs for Universal9611
rm -rf vendor/samsung/universal9611-common
git clone https://github.com/Exynos9611-Development/vendor_samsung_universal9611-common vendor/samsung/universal9611-common --depth 1

# Hardware OSS parts for Samsung
mv hardware/samsung/nfc .
rm -rf hardware/samsung
git clone https://github.com/ProjectElixir-Devices/hardware_samsung hardware/samsung --depth 1 -b thirteen
mv nfc hardware/samsung

# SLSI Sepolicy
rm -rf device/samsung_slsi/sepolicy
git clone https://github.com/roynatech2544/android_device_samsung_slsi_sepolicy device/samsung_slsi/sepolicy --depth 1

# Clone bluetooth lib from slsi sources
rm -rf hardware/samsung_slsi/libbt
git clone https://github.com/LeafOS-Devices/android_hardware_samsung_slsi_libbt hardware/samsung_slsi/libbt --depth 1

# OSS Wifi HAL from SLSI
rm -rf hardware/samsung_slsi/scsc_wifibt/wifi_hal
git clone https://github.com/LeafOS-Devices/android_hardware_samsung_slsi_scsc_wifibt_wifi_hal hardware/samsung_slsi/scsc_wifibt/wifi_hal --depth 1

# OSS Wpa Supplicant impl lib from SLSI
rm -rf hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib
git clone https://github.com/LeafOS-Devices/android_hardware_samsung_slsi_scsc_wifibt_wpa_supplicant_lib hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib --depth 1
