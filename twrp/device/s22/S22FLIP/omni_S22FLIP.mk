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

# Inherit from S22FLIP device
$(call inherit-product, device/s22/S22FLIP/device.mk)

PRODUCT_DEVICE := S22FLIP
PRODUCT_NAME := omni_S22FLIP
PRODUCT_BRAND := Cat
PRODUCT_MODEL := S22 FLIP
PRODUCT_MANUFACTURER := s22

PRODUCT_GMS_CLIENTID_BASE := android-s22

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="S22FLIP-user 11 RKQ1.210416.002 LTE_S02113.11_N_S22Flip_0.030.03 release-keys"

BUILD_FINGERPRINT := Cat/S22FLIP/S22FLIP:11/RKQ1.210416.002/LTE_S02113.11_N_S22Flip_0.030.03:user/release-keys
