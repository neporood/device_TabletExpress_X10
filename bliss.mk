$(call inherit-product, device/TabletExpress/X10/full_X10.mk)

# Inherit from bliss vendor some common stuff
$(call inherit-product, vendor/bliss/config/common_full_tablet_wifionly.mk)

PRODUCT_RELEASE_NAME := Dragon Touch X10
PRODUCT_NAME := bliss_X10

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_DISPLAY_ID='X10-userdebug $(PLATFORM_VERSION) $(BUILD_ID) $(BUILD_NUMBER) test-keys' \
    TARGET_BUILD_FLAVOR=bliss_X10-userdebug
