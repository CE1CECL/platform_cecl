#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from A390 device
$(call inherit-product, device/blu/A390/device.mk)

PRODUCT_DEVICE := A390
PRODUCT_NAME := omni_A390
PRODUCT_BRAND := BLU
PRODUCT_MODEL := Advance L5
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sp7731e_fs280_32v4_project-user 8.1.0 OPM2.171019.012 31416 release-keys"

BUILD_FINGERPRINT := BLU/Advance_L5/A390:8.1.0/OPM2.171019.012/31416:user/release-keys
