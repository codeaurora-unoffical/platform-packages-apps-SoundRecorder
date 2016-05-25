LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-subdir-java-files)

LOCAL_RESOURCE_DIR := $(LOCAL_PATH)/res
LOCAL_RESOURCE_DIR += frameworks/support/v7/recyclerview/res

LOCAL_AAPT_FLAGS += --auto-add-overlay
LOCAL_AAPT_FLAGS += --extra-packages
LOCAL_AAPT_FLAGS += android.support.v7.recyclerview

LOCAL_STATIC_JAVA_LIBRARIES += android-support-v4
LOCAL_STATIC_JAVA_LIBRARIES += android-support-v7-recyclerview

LOCAL_PACKAGE_NAME := SoundRecorder

## LOCAL_PROGUARD_ENABLED := disabled

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PACKAGE)
