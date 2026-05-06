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

# Inherit from Bangkok_NA_OM device
$(call inherit-product, device/tcl/Bangkok_NA_OM/device.mk)

PRODUCT_DEVICE := Bangkok_NA_OM
PRODUCT_NAME := omni_Bangkok_NA_OM
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5102O
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="5102O-user 11 RP1A.200720.011 vDA4R release-keys"

BUILD_FINGERPRINT := TCL/5102O/Bangkok_NA_OM:11/RP1A.200720.011/vDA4R:user/release-keys
