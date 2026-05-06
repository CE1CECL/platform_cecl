#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from S22FLIP device
$(call inherit-product, device/cat/S22FLIP/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := S22FLIP
PRODUCT_NAME := lineage_S22FLIP
PRODUCT_BRAND := Cat
PRODUCT_MODEL := S22 FLIP
PRODUCT_MANUFACTURER := cat

PRODUCT_GMS_CLIENTID_BASE := android-cat

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="S22FLIP-user 11 RKQ1.210416.002 LTE_S02113.11_N_S22Flip_0.030.03 release-keys" \
    BuildFingerprint=Cat/S22FLIP/S22FLIP:11/RKQ1.210416.002/LTE_S02113.11_N_S22Flip_0.030.03:user/release-keys
