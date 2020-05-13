## Specify phone tech before including full_phone
#$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := P5L

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/gionee/GiONEE_WBL7352/device_GiONEE_WBL7352.mk)

# Configure dalvik heap
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := GiONEE_WBL7352
PRODUCT_NAME := lineage_GiONEE_WBL7352
PRODUCT_BRAND := GiONEE
PRODUCT_MODEL := P5L
PRODUCT_MANUFACTURER := GiONEE
