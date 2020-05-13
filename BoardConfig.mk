DEVICE_PATH := device/gionee/GiONEE_WBL7352
VENDOR_PATH := vendor/gionee/GiONEE_WBL7352

# NINJA is enabled for fasted building
# Set 'false' to disable use NINJA
USE_NINJA := true

# Block based ota
#BLOCK_BASED_OTA := false

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include $(VENDOR_PATH)/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := mt6735

# Architecture
ifeq ($(FORCE_32_BIT),true)
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
else
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
endif

TARGET_NO_BOOTLOADER := true
TARGET_CPU_SMP := true

ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true

TARGET_GLOBAL_CFLAGS   += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_USERIMAGES_USE_EXT4:=true

TARGET_BOOTLOADER_BOARD_NAME := mt6735

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40078000
#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x03f88000

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216 # 0x1000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 # 0x3000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2902458368 # 0x60000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12110528512 # 0x2fcd80000
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400 # 0x19000000
#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --board 1450664547 

#in case you want to build kernel from prebuilt image
# comment out the following 4 lines
#TARGET_KERNEL_SOURCE := kernel/gionee/GiONEE_WBL7352
#TARGET_KERNEL_CONFIG := gionee6735_65u_l1_defconfig
#TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
#BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_BOARD_KERNEL_HEADERS := device/gionee/GiONEE_WBL7352/kernel-headers
# end of commented lines

#for now lets use prebuilt
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb
BOARD_HAS_NO_SELECT_BUTTON := true
#recovery
#TARGET_RECOVERY_INITRC := $(DEVICE_PATH)/recovery/init.mt6753.rc
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/fstab.mt6735
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness\"

#system.prop
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# WiFi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM:="/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

#twrp ( WIP do not use!!! see comments )

#tw_theme is essential flag
TW_THEME := portrait_hdpi

#brightness settings (needs verification)
TW_BRIGHTNESS_PATH := /sys/devices/platform/leds-mt65xx/leds/lcd-backlight/brightness/
TW_MAX_BRIGHTNESS := 255

#Mediatek flags
BOARD_HAS_MTK_HARDWARE := true
BOARD_USES_MTK_HARDWARE := true
MTK_HARDWARE := true
BOARD_USES_MTK_AUDIO := true
#BOARD_GLOBAL_CFLAGS += -DADD_LEGACY_ACQUIRE_BUFFER_SYMBOL
#BOARD_GLOBAL_CFLAGS += -DCOMPAT_SENSORS_M
#BOARD_CONNECTIVITY_MODULE := conn_soc

# Display
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1
BOARD_EGL_WORKAROUND_BUG_10194508 := true
MTK_GPU_VERSION := mali midgard r5p0

# CyanogenMod Hardware Hooks
BOARD_HARDWARE_CLASS := $(DEVICE_PATH)/cmhw/

# RIL
BOARD_RIL_CLASS := ../../../$(DEVICE_PATH)/ril

BOARD_SEPOLICY_DIRS := $(DEVICE_PATH)/sepolicy

TARGET_LDPRELOAD += libmtk_symbols.so
#TARGET_LDPRELOAD += mtkcam.so

BOARD_USES_LEGACY_MTK_AV_BLOB := true

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

TARGET_TAP_TO_WAKE_NODE := /sys/devices/platform/tp_wake_switch/double_wake
