# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for DragonTouch X10
$(call inherit-product, device/TabletExpress/X10/full_X10.mk)

# Boot Animation
TARGET_SCREEN_HEIGHT := 768
TARGET_SCREEN_WIDTH := 1366

PRODUCT_NAME := cm_X10
PRODUCT_RELEASE_NAME := DragonTouch X10

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID='X10-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) test-keys' \
    TARGET_BUILD_FLAVOR=cm_X10-userdebug
