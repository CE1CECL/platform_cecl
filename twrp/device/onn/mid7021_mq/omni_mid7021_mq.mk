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

# Inherit from mid7021_mq device
$(call inherit-product, device/onn/mid7021_mq/device.mk)

PRODUCT_DEVICE := mid7021_mq
PRODUCT_NAME := omni_mid7021_mq
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100135924
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_mid7021_mq_32-user 14 UP1A.231005.007 mp1V1778 release-keys"

BUILD_FINGERPRINT := onn/100135924/mid7021_mq:14/UP1A.231005.007/qyh20251103:user/release-keys
