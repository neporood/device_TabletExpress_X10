# inherit from the proprietary version
-include vendor/TabletExpress/X10/BoardConfigVendor.mk

LOCAL_PATH := device/TabletExpress/X10

BOARD_VENDOR := allwinner

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
BOARD_USES_SECURE_SERVICES := true
TARGET_USE_NEON_OPTIMIZATION := true
TARGET_USES_ION := true

# Assert
TARGET_OTA_ASSERT_DEVICE := X10

# Audio
HAVE_HTC_AUDIO_DRIVER := true
BOARD_USES_GENERIC_AUDIO := true
CEDARX_CHIP_VERSION := 

# Bluetooth
BOARD_HAS_BLUETOOTH := true

# Bootloader
BOARD_USES_UBOOT := true
TARGET_BOOTLOADER_BOARD_NAME := exdroid
TARGET_NO_BOOTLOADER := true

# Camera
USE_CAMERA_STUB := true

# Display & Video
USE_OPENGL_RENDERER := true
ENABLE_WEBGL := true
OVERRIDE_RS_DRIVER := libRSDriver.so
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USE_COMPAT_GRALLOC_ALIGN := true

# EGL
BOARD_EGL_CFG := $(LOCAL_PATH)/egl/egl.cfg

# Kernel
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/kernel
BOARD_KERNEL_IMAGE_NAME := uImage
BOARD_KERNEL_CMDLINE := boot_type=0 disp_para=100 fb_base=0x0 config_size=53088 androidboot.serialno=00000000000000000000 androidboot.hardware=sun8i enforcing=1 console=ttyS0,115200 root=/dev/system init=/init vmalloc=384M ion_cma_list=120m,176m,512m loglevel=4 partitions=bootloader@nanda:env@nandb:boot@nandc:system@nandd:misc@nande:recovery@nandf:cache@nandg:metadata@nandh:private@nandi:alog@nandj:UDISK@nandk
# OEM uses non-standard offsets
BOARD_MKBOOTIMG_ARGS := --base 40000000 --pagesize 2048 --kernel_offset 00008000 --ramdisk_offset 01000000 --tags_offset 00000100

KERNEL_OBJ := "usr"

# Lights
TARGET_PROVIDES_LIBLIGHT := true

#Overrides
PRODUCT_PROPERTY_OVERRIDES += \
	ro.kernel.android.checkjni=0

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12683575296
BOARD_CACHEIMAGE_PARTITION_SIZE := 805306368
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_NO_RADIOIMAGE := true

# Platform
TARGET_BOARD_PLATFORM := octopus
TARGET_BOARD_PLATFORM_GPU := POWERVR-SGX-544MP

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab    

# sepolicy
BOARD_SEPOLICY_DIRS := \
       $(LOCAL_PATH)/sepolicy

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun/file"

# Wifi
BOARD_WPA_SUPPLICANT_DRIVER := AWEXT
# WIFI_DRIVER_MODULE_NAME := "wlan"
# WIFI_DRIVER_MODULE_PATH := "/system/vendor/modules/wlan.ko"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# inherit from the proprietary version
-include vendor/TabletExpress/X10/X10-vendor-blobs.mk

# To Do:
