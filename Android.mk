LOCAL_PATH:= $(call my-dir)

# make wrapper static lib
include $(CLEAR_VARS)
LOCAL_SRC_FILES := $(call all-java-files-under, src-Wrapper)
LOCAL_MODULE := soundrecorder_wrapper
LOCAL_MODULE_TAGS := optional

# support access hidden APIs
LOCAL_PRIVATE_PLATFORM_APIS:=true

include $(BUILD_STATIC_JAVA_LIBRARY)

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
LOCAL_STATIC_JAVA_LIBRARIES += soundrecorder_wrapper

LOCAL_PACKAGE_NAME := SoundRecorder

# support access hidden APIs
LOCAL_PRIVATE_PLATFORM_APIS:=true

LOCAL_PROGUARD_FLAG_FILES := proguard.flags

LOCAL_PRIVILEGED_MODULE := true

include $(BUILD_PACKAGE)
