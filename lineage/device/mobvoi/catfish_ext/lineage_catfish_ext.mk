#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from catfish_ext device
$(call inherit-product, device/mobvoi/catfish_ext/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := catfish_ext
PRODUCT_NAME := lineage_catfish_ext
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="catfish_ext-user 9 PMP2.210104.001 105 release-keys" \
    BuildFingerprint=mobvoi/catfish_ext/catfish_ext:9/PMP2.210104.001/105:user/release-keys
