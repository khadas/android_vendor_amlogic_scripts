LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES_32 := ca/lib/libprovision.so
LOCAL_SRC_FILES_64 := ca/lib64/libprovision.so
LOCAL_MODULE := libprovision
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := ta/e92a43ab-b4c8-4450-aa12b1516259613b.ta
LOCAL_MODULE := e92a43ab-b4c8-4450-aa12b1516259613b
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .ta
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/lib/teetz
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_CFLAGS += -DANDROID_BUILD
LOCAL_CFLAGS += -Wall
LOCAL_SRC_FILES += ca/src/provision.c
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ca/include
LOCAL_SHARED_LIBRARIES := libteec libprovision
LOCAL_MODULE := tee_provision
LOCAL_MODULE_TAGS := optional
include $(BUILD_EXECUTABLE)
