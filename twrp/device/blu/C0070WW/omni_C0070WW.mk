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

# Inherit from C0070WW device
$(call inherit-product, device/blu/C0070WW/device.mk)

PRODUCT_DEVICE := C0070WW
PRODUCT_NAME := omni_C0070WW
PRODUCT_BRAND := BLU
PRODUCT_MODEL := C5L 2020
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sp9832e_1h10_gofu-user 10 QP1A.190711.020 06319 release-keys"

BUILD_FINGERPRINT := BLU/C5L_2020_FWVGA/C0070WW:10/QP1A.190711.020/06319:user/release-keys
