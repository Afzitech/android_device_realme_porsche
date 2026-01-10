#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8350-common/BoardConfigCommon.mk

DEVICE_PATH := device/realme/porsche

# Display
SOONG_CONFIG_qtidisplay_udfps := true
TARGET_SCREEN_DENSITY := 450

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Partitions
BOARD_ONEPLUS_DYNAMIC_PARTITIONS_SIZE := 11186208768 # BOARD_SUPER_PARTITION_SIZE - 4MB

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 103

# Include the proprietary files BoardConfig.
include vendor/realme/porsche/BoardConfigVendor.mk

# Allow multiple versions of graphics common AIDL for legacy vendor blobs
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true

# Allow AIDL version mismatches for legacy vendor blobs
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true

# QPR1: Allow AIDL version mismatches for legacy Realme camera blobs
BUILD_BROKEN_VINTF_PRODUCT_COPY_FILES := true
SOONG_CONFIG_OPLUS_LINEAGE_VIBRATOR_HAL_USE_EFFECT_STREAM := "true"
# VINTF Fixes
PRODUCT_ENFORCE_VINTF_MANIFEST := true
# This skips the kernel version match check which can be buggy on 5.4 kernels
#PRODUCT_OTA_ENFORCE_VINTF_KERNEL_REQUIREMENTS := false
