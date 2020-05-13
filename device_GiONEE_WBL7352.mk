$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)
#$(call inherit-product, device/gionee/GiONEE_WBL7352/ProjectConfig.mk)

$(call inherit-product-if-exists, vendor/gionee/GiONEE_WBL7352/GiONEE_WBL7352-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/gionee/GiONEE_WBL7352/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi
PRODUCT_AAPT_PREBUILT_DPI := xxhdpi xhdpi hdpi

ifeq ($(TARGET_PREBUILT_KERNEL),)
    LOCAL_KERNEL := device/gionee/GiONEE_WBL7352/prebuilt/Image.gz-dtb
else
    LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

TARGET_OTA_ASSERT_DEVICE := P5L,GiONEE_WBL7352

#TARGET_HAS_LEGACY_CAMERA_HAL1 := true

#TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Root Dir Copy

#TARGET_PROVIDES_INIT_RC := true
#PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.rc:root/init.rc
#PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.target.rc:root/init.target.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.mt6735.rc:root/init.mt6735.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.ssd.rc:root/init.ssd.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.xlog.rc:root/init.xlog.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.usb.rc:root/init.usb.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.aee.rc:root/init.aee.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.project.rc:root/init.project.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.modem.rc:root/init.modem.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/init.trace.rc:root/init.trace.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/fstab.mt6735:root/fstab.mt6735
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/fstab.swap:root/fstab.swap
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/rootdir/ueventd.rc:root/ueventd.rc

# Extra
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/etc/media_codecs.xml:system/etc/media_codecs.xml
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/media_profiles.xml:system/etc/media_profiles.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml
PRODUCT_COPY_FILES += frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.audio.output.xml:system/etc/permissions/android.hardware.audio.output.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml
PRODUCT_COPY_FILES += frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_COPY_FILES += prebuilts/sdk/org.apache.http.legacy/org.apache.http.legacy.jar:system/framework/org.apache.http.legacy.jar
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/egl.cfg:system/lib/egl/egl.cfg

PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/etc/init/audioserver.rc:system/etc/init/audioserver.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/etc/init/mediacodec.rc:system/etc/init/mediacodec.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/etc/init/cameraserver.rc:system/etc/init/cameraserver.rc
PRODUCT_COPY_FILES += device/gionee/GiONEE_WBL7352/etc/init/rild.rc:system/etc/init/rild.rc

PRODUCT_PACKAGES += libdrmclearkeyplugin
PRODUCT_PACKAGES += libmockdrmcryptoplugin
PRODUCT_PACKAGES += libaudio-resampler
PRODUCT_PACKAGES += libwebrtc_audio_preprocessing
PRODUCT_PACKAGES += libtinyalsa
PRODUCT_PACKAGES += pppd
PRODUCT_PACKAGES += uiautomator
PRODUCT_PACKAGES += libtinycompress
PRODUCT_PACKAGES += libtinyxml
PRODUCT_PACKAGES += thermal
PRODUCT_PACKAGES += libion
PRODUCT_PACKAGES += libGLES_android
PRODUCT_PACKAGES += power.mt6735

# RIL
PRODUCT_PACKAGES += gsm0710muxd

PRODUCT_PACKAGES += libxlog
PRODUCT_PACKAGES += libperfservicenative
PRODUCT_PACKAGES += libcurl
#PRODUCT_PACKAGES += libbt-vendor
PRODUCT_PACKAGES += libdpframework
#PRODUCT_PACKAGES += libshim_gui
#PRODUCT_PACKAGES += mtkcam
PRODUCT_PACKAGES += libmtk_symbols

# Shims
#LINKER_FORCED_SHIM_LIBS := /system/lib/libgui.so|libshim_gui.so 
#LINKER_FORCED_SHIM_LIBS := /system/lib64/libgui.so|libshim_gui.so

# Shims
#LINKER_FORCED_SHIM_LIBS := /system/lib/libui.so|libshim_ui.so 
#LINKER_FORCED_SHIM_LIBS := /system/lib64/libui.so|libshim_ui.so

# Prebuilt Google-Apps
#PRODUCT_PACKAGES += CalculatorGooglePrebuilt
#PRODUCT_PACKAGES += CalendarGooglePrebuilt
#PRODUCT_PACKAGES += Chrome
#PRODUCT_PACKAGES += GoogleContacts
#PRODUCT_PACKAGES += GoogleDialer
#PRODUCT_PACKAGES += Photos
#PRODUCT_PACKAGES += PrebuiltBugle
#PRODUCT_PACKAGES += PrebuiltDeskClockGoogle
#PRODUCT_PACKAGES += WebViewGoogle
#PRODUCT_PACKAGES += Music2
#PRODUCT_PACKAGES += PrebuiltGmail
#PRODUCT_PACKAGES += Launcher3
#PRODUCT_PACKAGES += StorageManagerGoogle

# Camera
PRODUCT_PACKAGES += CameraNext
PRODUCT_PACKAGES += libjni_mosaic_next
PRODUCT_PACKAGES += libjni_tinyplanet_next

#GPS
PRODUCT_PACKAGES += YGPS

# Wifi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    device/gionee/GiONEE_WBL7352/rootdir/etc/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

#PRODUCT_PACKAGES += stlport_shared
PRODUCT_COPY_FILES += \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/arm64-v8a/libstlport_shared.so:system/lib64/libstlport.so \
    prebuilts/ndk/current/sources/cxx-stl/stlport/libs/armeabi-v7a/libstlport_shared.so:system/lib/libstlport.so

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Odex
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# These additionals go to /default.prop
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0 \
ro.allow.mock.location=1 \
ro.debuggable=1 \
ro.adb.secure=0 \
camera.disable_zsl_mode=1 \
persist.service.acm.enable=0 \
persist.sys.usb.config=mtp,adb \
ro.mount.fs=EXT4 \

PRODUCT_PROPERTY_OVERRIDES += debug.hwui.render_dirty_regions=false
PRODUCT_PROPERTY_OVERRIDES += persist.radio.multisim.config=ss
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.default_network=9
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_lte_support=1
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.ril_class=MT6735
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.ril.config=fakeiccid
PRODUCT_PROPERTY_OVERRIDES += ro.telephony.sim.count=1
PRODUCT_PROPERTY_OVERRIDES += persist.gemini.sim_num=1
PRODUCT_PROPERTY_OVERRIDES += ril.current.share_modem=1
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_gps_support=1
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_agps_app=1
PRODUCT_PROPERTY_OVERRIDES += persist.camera.HAL3.enabled=1
PRODUCT_PROPERTY_OVERRIDES += ro.config.low_ram=true
PRODUCT_PROPERTY_OVERRIDES += persist.sys.force_highendgfx=true
PRODUCT_PROPERTY_OVERRIDES += persist.sys.shutdown.mode=hibernate
PRODUCT_PROPERTY_OVERRIDES += ro.config.hw_quickpoweron=true
PRODUCT_PROPERTY_OVERRIDES += ro.opa.eligible_device=true
PRODUCT_PROPERTY_OVERRIDES += persist.radio.fd.counter=15
PRODUCT_PROPERTY_OVERRIDES += persist.radio.fd.off.counter=5
PRODUCT_PROPERTY_OVERRIDES += persist.radio.fd.r8.counter=15
PRODUCT_PROPERTY_OVERRIDES += persist.radio.fd.off.r8.counter=5
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.version.sdk=4
PRODUCT_PROPERTY_OVERRIDES += ro.sf.hwrotation=0
PRODUCT_PROPERTY_OVERRIDES += persist.mtk.wcn.combo.chipid=-1
PRODUCT_PROPERTY_OVERRIDES += persist.mtk.wcn.patch.version=-1
PRODUCT_PROPERTY_OVERRIDES += persist.mtk.wcn.dynamic.dump=0
PRODUCT_PROPERTY_OVERRIDES += service.wcn.driver.ready=no
PRODUCT_PROPERTY_OVERRIDES += service.wcn.coredump.mode=0
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_tetheringipv6_support=1
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.chip_ver=S01
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.platform=MT6735
PRODUCT_PROPERTY_OVERRIDES += mediatek.wlan.chip=CONSYS_MT6735
PRODUCT_PROPERTY_OVERRIDES += mediatek.wlan.module.postfix=_consys_mt6735
PRODUCT_PROPERTY_OVERRIDES += ro.mediatek.version.branch=L1.MP3
PRODUCT_PROPERTY_OVERRIDES += ro.kernel.android.checkjni=0
PRODUCT_PROPERTY_OVERRIDES += dalvik.vm.checkjni=false
PRODUCT_PROPERTY_OVERRIDES += ro.mtk_pq_support=2
#PRODUCT_PROPERTY_OVERRIDES += ro.frp.pst=/dev/block/platform/mtk-msdc.0/by-name/frp
