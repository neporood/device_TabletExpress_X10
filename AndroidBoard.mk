LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

#ALL_PREBUILT += $(INSTALLED_KERNEL_TARGET)

# include the non-open-source counterpart to this file
-include vendor/TabletExpress/X10/BoardConfigVendor.mk
#include $(LOCAL_PATH)/AndroidKernel.mk
