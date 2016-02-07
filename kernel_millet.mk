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

BOARD_KERNEL_SEPARATED_DT    := true
BOARD_DTBTOOL_ARGS           := --force-v2
BOARD_CUSTOM_BOOTIMG_MK      := $(LOCAL_PATH)/mkbootimg.mk
TARGET_CUSTOM_KERNEL_HEADERS := $(LOCAL_PATH)/include
TARGET_KERNEL_CONFIG         := twrp_msm8226_defconfig
TARGET_KERNEL_VARIANT_CONFIG := twrp_matisse_defconfig

PRODUCT_NAME := kernel_millet
PRODUCT_DEVICE := matisse
PRODUCT_BRAND := SAMSUNG
PRODUCT_MANUFACTURER := SAMSUNG
