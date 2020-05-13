#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/system_core.patch
cd ..
cd sepolicy
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/sepolicy.patch
cd ../..
cd packages/apps/Settings
patch -p1 < ../../../device/gionee/GiONEE_WBL7352/patches/settings_app.patch
cd ../../..
cd frameworks/av
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/framework_av.patch
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/framework_av_audio.patch
cd ..
cd native/
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/framework_native.patch
cd ..
cd webview/
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/framework_webview.patch
cd ..
cd base/
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/WMService.patch
cd ../..
cd system/netd
patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/netd.patch
cd ../..
cd bionic/
patch -p1 < ../device/gionee/GiONEE_WBL7352/patches/bionic.patch
cd ..
#cd vendor/cm
#patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/vendor_cm.patch
#cd ../../
echo "!........Patching Done.......!"


