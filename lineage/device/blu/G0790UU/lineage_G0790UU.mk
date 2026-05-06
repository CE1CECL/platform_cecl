#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from G0790UU device
$(call inherit-product, device/blu/G0790UU/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := G0790UU
PRODUCT_NAME := lineage_G0790UU
PRODUCT_BRAND := BLU
PRODUCT_MODEL := G40
PRODUCT_MANUFACTURER := blu

PRODUCT_GMS_CLIENTID_BASE := android-blu

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="full_yk507_lwg61_64-user 12 SP1A.210812.016 08535 release-keys" \
    BuildFingerprint=BLU/G40/G0790UU:12/SP1A.210812.016/08535:user/release-keys
