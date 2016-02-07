# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER         := true

# Vendor Init
TARGET_UNIFIED_DEVICE       := true
TARGET_INIT_VENDOR_LIB      := libinit_msm
TARGET_LIBINIT_DEFINES_FILE := device/samsung/millet/init_millet.c

# Platform
TARGET_BOARD_PLATFORM       := msm8226
TARGET_BOARD_PLATFORM_GPU   := qcom-adreno305

# Flags
TARGET_GLOBAL_CFLAGS     += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS   += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS     += -DQCOM_BSP

# Architecture
TARGET_ARCH              := arm
TARGET_ARCH_VARIANT      := armv7-a-neon
TARGET_CPU_ABI           := armeabi-v7a
TARGET_CPU_ABI2          := armeabi
TARGET_CPU_SMP           := true
TARGET_CPU_VARIANT       := krait

# Kernel
BOARD_KERNEL_CMDLINE     := androidboot.console=null androidboot.hardware=qcom
BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    :=  2048
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000
BOARD_MKBOOTIMG_ARGS     := --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS     += --dt device/samsung/millet/dt.img

# prebuilt kernel
TARGET_PREBUILT_KERNEL   := device/samsung/millet/kernel
TARGET_KERNEL_SOURCE     := kernel/samsung/matissewifi

# Charging mode
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
BOARD_BATTERY_DEVICE_NAME       := "battery"
BOARD_CHARGER_SHOW_PERCENTAGE   := true

BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A7DEA0
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_HAS_NO_MISC_PARTITION        := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR   := true
BOARD_HAS_NO_SELECT_BUTTON         := true
BOARD_NEEDS_LZMA_MINIGZIP          := true
BOARD_SUPPRESS_SECURE_ERASE        := true

TARGET_RECOVERY_PIXEL_FORMAT     := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4       := true
TARGET_USERIMAGES_USE_F2FS       := true
RECOVERY_SDCARD_ON_DATA          := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true

# TWRP config
TW_DEVICE_SPECIFIC_VERSION := "3.0.0-1"
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_NTFS_3G := true

PRODUCT_COPY_FILES += bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata
PRODUCT_PACKAGES += charger charger_res_images
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0 persist.sys.usb.config=mtp
