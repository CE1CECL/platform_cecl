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

# Inherit from surfna device
$(call inherit-product, device/motorola/surfna/device.mk)

PRODUCT_DEVICE := surfna
PRODUCT_NAME := omni_surfna
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto e6 (XT2005DL)
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="surfna_trac-user 9 PPBS29.73-81-5-14-5-4-2-6-7 7d8fec release-keys"

BUILD_FINGERPRINT := motorola/surfna_trac/surfna:9/PPBS29.73-81-5-14-5-4-2-6-7/7d8fec:user/release-keys
