$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, vendor/TabletExpress/X10/X10-vendor-blobs.mk)

LOCAL_PATH := device/TabletExpress/X10

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 160dpi
PRODUCT_AAPT_PREBUILT_DPI := 160dpi xxhdpi xhdpi hdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1366

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# RIL
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/configs/libsoftwinner-ril-5.0.so:system/lib64/libsoftwinner-ril-5.0.so

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

