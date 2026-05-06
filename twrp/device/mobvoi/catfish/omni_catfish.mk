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

# Inherit from catfish device
$(call inherit-product, device/mobvoi/catfish/device.mk)

PRODUCT_DEVICE := catfish
PRODUCT_NAME := omni_catfish
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="catfish-user 9 PWDD.190617.074 6586999 release-keys"

BUILD_FINGERPRINT := mobvoi/catfish/catfish:9/PWDD.190617.074/6586999:user/release-keys
