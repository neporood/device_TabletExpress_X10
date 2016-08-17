$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/TabletExpress/X10/X10-vendor-blobs.mk)

LOCAL_PATH := device/TabletExpress/X10

# Screen density
# PRODUCT_AAPT_CONFIG := normal
# PRODUCT_AAPT_PREF_CONFIG := 160dpi
# PRODUCT_AAPT_PREBUILT_DPI := 160dpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1366

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Boot Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/root/res/images/charger/battery_fail.png:root/res/images/charger/battery_fail.png \
    $(LOCAL_PATH)/root/res/images/charger/battery_scale.png:root/res/images/charger/battery_scale.png \
    $(LOCAL_PATH)/root/sbin/init_parttion.sh:root/sbin/init_parttion.sh \
    $(LOCAL_PATH)/root/config_mem.ini:root/config_mem.ini \
    $(LOCAL_PATH)/root/disp.ko:root/disp.ko \
    $(LOCAL_PATH)/root/fstab.sun8i:root/fstab.sun8i \
    $(LOCAL_PATH)/root/init:root/init \
    $(LOCAL_PATH)/root/init.common.rc/:root/init.common.rc \
    $(LOCAL_PATH)/root/init.environ.rc:root/init.environ.rc \
    $(LOCAL_PATH)/root/init.rc:root/init.rc \
    $(LOCAL_PATH)/root/init.recovery.sun8i.rc:root/init.recovery.sun8i.rc \
    $(LOCAL_PATH)/root/init.sun8i.common.rc:root/init.sun8i.common.rc \
    $(LOCAL_PATH)/root/init.sun8i.rc:root/init.sun8i.rc \
    $(LOCAL_PATH)/root/init.sun8i.usb.rc:root/init.sun8i.usb.rc \
    $(LOCAL_PATH)/root/nand.ko:root/nand.ko \
    $(LOCAL_PATH)/root/sunxi_tr.ko:root/sunxi_tr.ko \
    $(LOCAL_PATH)/root/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/root/ueventd.sun8i.rc:root/ueventd.sun8i.rc

# RIL
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/libsoftwinner-ril-5.0.so:system/lib64/libsoftwinner-ril-5.0.so

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

