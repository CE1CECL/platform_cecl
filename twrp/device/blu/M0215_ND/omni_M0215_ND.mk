#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from M0215_ND device
$(call inherit-product, device/blu/M0215_ND/device.mk)

PRODUCT_DEVICE := M0215_ND
PRODUCT_NAME := omni_M0215_ND
PRODUCT_BRAND := BLU
PRODUCT_MODEL := M10L Pro
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_q864_8766_64_t-user 12 SP1A.210812.016 YM14002U release-keys"

BUILD_FINGERPRINT := BLU/M10L_Pro/M0215_ND:12/SP1A.210812.016/YM14002U:user/release-keys
