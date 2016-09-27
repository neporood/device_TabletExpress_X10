# Inherit from X10 device
$(call inherit-product, device/TabletExpress/X10/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := X10
PRODUCT_NAME := aosp_X10
PRODUCT_BRAND := Allwinner
PRODUCT_MODEL := X10
PRODUCT_MANUFACTURER := TabletExpress
