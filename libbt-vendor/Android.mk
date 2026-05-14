LOCAL_PATH := $(call my-dir)

###########################################################################
# MTK BT DRIVER FOR BLUEDROID
###########################################################################
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
    bt_drv.c \
    mtk.c \
    radiomgr.c \
    radiomod.c

LOCAL_C_INCLUDES := \
    system/bt/hci/include

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libbt-vendor

LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils

LOCAL_PRELINK_MODULE := false
include $(BUILD_SHARED_LIBRARY)
