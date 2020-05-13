#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0020-healthd_batteryVoltage.patch
cd ../..
cd packages/apps/Settings
#patch -p1 < ../../../device/gionee/GiONEE_WBL7352/patches/0005-add-author-info-in-device-info.patch
cd ../../..
cd frameworks/av
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0006-fix-access-wvm-to-ReadOptions.patch
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0007-Disable-usage-of-get_capture_position.patch
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0008-Partial-Revert-Camera1-API-Support-SW-encoders.patch
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/0009-add-mtk-color-format-support.patch
cd ../..
cd system/netd
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/netd.patch
cd ../..

