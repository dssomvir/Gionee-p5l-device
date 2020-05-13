LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
             mtk_gui.cpp 

LOCAL_SHARED_LIBRARIES := libbinder \
                          libutils \
                          liblog \
                          libgui \
                          libui \
                          libicuuc \
                          libicui18n \
                          libcrypto \
                          libcutils 
LOCAL_MODULE := libshim_gui
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
