LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

BDROID_DIR := $(TOP_DIR)system/bt

###########################################################################
# MTK BT DRIVER FOR BLUEDROID
###########################################################################
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
  bt_drv.c \
  mtk.c \
  radiomgr.c \
  platform.c

LOCAL_C_INCLUDES := \
    $(BDROID_DIR)hci/include \
    system/bt/hci/include

LOCAL_CFLAGS += -DMTK_VENDOR_OPCODE=FALSE
LOCAL_CFLAGS += -DMTK_BPERF_ENABLE=FALSE

LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := libbt-vendor

LOCAL_SHARED_LIBRARIES := \
        libcutils \
        libutils \
        liblog

LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
