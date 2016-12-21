LOCAL_PATH := device/TabletExpress/X10

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Get non-open-source specific aspects
$(call inherit-product, vendor/TabletExpress/X10/X10-vendor-blobs.mk)

DEVICE_FOLDER := device/TabletExpress/X10

# Audio configuration
	#Try to pull from CM files - drew
PRODUCT_COPY_FILES += \
    hardware/libhardware_legacy/audio/audio_policy.conf:system/etc/audio_policy.conf 

# Boot Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/TabletExpress/X10/recovery/root,root)

# Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.debuggable=1

# RIL
# Drew - this is the radio initialization daemon library, going to try to disable, but it may break wifi
# disabling should force it to fall back on hardware/ril
#PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/libsoftwinner-ril-5.0.so:system/lib64/libsoftwinner-ril-5.0.so

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

