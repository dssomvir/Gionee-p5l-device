#!/bin/bash
cd ../../../..
cd system/core
git checkout ../../device/gionee/GiONEE_WBL7352/patches/system_core.patch
cd ..
cd sepolicy
git checkout ../../device/gionee/GiONEE_WBL7352/patches/sepolicy.patch
cd ../..
cd packages/apps/Settings
git checkout ../../../device/gionee/GiONEE_WBL7352/patches/settings_app.patch
cd ../../..
cd frameworks/av
git checkout ../../device/gionee/GiONEE_WBL7352/patches/framework_av.patch
git checkout ../../device/gionee/GiONEE_WBL7352/patches/framework_av_audio.patch
cd ..
cd native/
git checkout ../../device/gionee/GiONEE_WBL7352/patches/framework_native.patch
cd ..
cd webview/
git checkout ../../device/gionee/GiONEE_WBL7352/patches/framework_webview.patch
cd ..
cd base/
git checkout ../../device/gionee/GiONEE_WBL7352/patches/WMService.patch
cd ../..
cd system/netd
git checkout ../../device/gionee/GiONEE_WBL7352/patches/netd.patch
cd ../..
cd bionic/
git checkout ../device/gionee/GiONEE_WBL7352/patches/bionic.patch
cd ..
#cd vendor/cm
#patch -p1 < ../../device/gionee/GiONEE_WBL7352/patches/vendor_cm.patch
#cd ../../
echo "!........Patching Done.......!"


