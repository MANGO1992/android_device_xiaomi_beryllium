#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/beryllium

# Assert
TARGET_OTA_ASSERT_DEVICE := beryllium

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Compile with SDClang
TARGET_USE_SDCLANG := true

# Kernel
TARGET_KERNEL_CONFIG := beryllium_defconfig

# Inherit from the proprietary version
-include vendor/xiaomi/beryllium/BoardConfigVendor.mk

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_beryllium
TARGET_RECOVERY_DEVICE_MODULES := libinit_beryllium
