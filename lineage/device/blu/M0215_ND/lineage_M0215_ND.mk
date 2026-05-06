#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from M0215_ND device
$(call inherit-product, device/blu/M0215_ND/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := M0215_ND
PRODUCT_NAME := lineage_M0215_ND
PRODUCT_BRAND := BLU
PRODUCT_MODEL := M10L Pro
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_t_64_cn-user 13 TP1A.220624.014 YM14002U release-keys" \
    BuildFingerprint=BLU/M10L_Pro/M0215_ND:13/TP1A.220624.014/YM14002U:user/release-keys
