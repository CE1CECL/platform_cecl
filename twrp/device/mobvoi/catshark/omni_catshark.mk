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

# Inherit from catshark device
$(call inherit-product, device/mobvoi/catshark/device.mk)

PRODUCT_DEVICE := catshark
PRODUCT_NAME := omni_catshark
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro 4G
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="catshark-user 9 PWDD.190617.032 5929426 release-keys"

BUILD_FINGERPRINT := mobvoi/catshark/catshark:9/PWDD.190617.032/5929426:user/release-keys
