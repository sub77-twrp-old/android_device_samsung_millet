#
# Copyright 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

LOCAL_PATH := device/samsung/millet

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += $(LOCAL_KERNEL):kernel
PRODUCT_COPY_FILES += bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_PACKAGES += charger charger_res_images

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0 persist.sys.usb.config=mtp

PRODUCT_DEVICE := millet
PRODUCT_BRAND := SAMSUNG
PRODUCT_MANUFACTURER := SAMSUNG

PRODUCT_NAME := multirom_millet

# MultiROM config
TARGET_RECOVERY_IS_MULTIROM := true
MR_DEVICE_SPECIFIC_VERSION := k
#TW_CUSTOM_THEME := device/samsung/millet/multirom/twres
MR_ALLOW_NKK71_NOKEXEC_WORKAROUND := true
BOARD_MKBOOTIMG_ARGS += --board mrom$(shell date -u +%Y%m%d)-01
MR_DEVICE_VARIANTS := millet
MR_DEVICE_VARIANTS += milletue
MR_DEVICE_VARIANTS += millet3g
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/samsung/millet/multirom/mr_init_devices.c
MR_DPI := hdpi
MR_DPI_MUL := 1
MR_DPI_FONT := 160
MR_FSTAB := device/samsung/millet/recovery.fstab
MR_USE_MROM_FSTAB := true
MR_INFOS := device/samsung/millet/multirom/mrom_infos
MR_KEXEC_MEM_MIN := 0x06200000
MR_KEXEC_DTB := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/samsung/millet/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_CONTINUOUS_FB_UPDATE := true
MR_DEVICE_HOOKS := device/samsung/millet/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 3
