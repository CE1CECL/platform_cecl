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

# Inherit from catfish_ext device
$(call inherit-product, device/mobvoi/catfish_ext/device.mk)

PRODUCT_DEVICE := catfish_ext
PRODUCT_NAME := omni_catfish_ext
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="catfish_ext-user 9 PMP2.210104.001 105 release-keys"

BUILD_FINGERPRINT := mobvoi/catfish_ext/catfish_ext:9/PMP2.210104.001/105:user/release-keys
