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

# Inherit from gtelwifiue device
$(call inherit-product, device/samsung/gtelwifiue/device.mk)

PRODUCT_DEVICE := gtelwifiue
PRODUCT_NAME := omni_gtelwifiue
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-T560NU
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gtelwifiue-user 7.1.1 NMF26X T560NUUEU1CQK2 release-keys"

BUILD_FINGERPRINT := samsung/gtelwifiue/gtelwifiue:7.1.1/NMF26X/T560NUUEU1CQK2:user/release-keys
