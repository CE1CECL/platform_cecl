#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from catfish device
$(call inherit-product, device/mobvoi/catfish/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := catfish
PRODUCT_NAME := lineage_catfish
PRODUCT_BRAND := mobvoi
PRODUCT_MODEL := TicWatch Pro
PRODUCT_MANUFACTURER := mobvoi

PRODUCT_GMS_CLIENTID_BASE := android-mobvoi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="catfish-user 9 PWDD.190617.074 6586999 release-keys" \
    BuildFingerprint=mobvoi/catfish/catfish:9/PWDD.190617.074/6586999:user/release-keys
