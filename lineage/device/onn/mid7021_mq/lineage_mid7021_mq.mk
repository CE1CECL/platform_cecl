#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mid7021_mq device
$(call inherit-product, device/onn/mid7021_mq/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := mid7021_mq
PRODUCT_NAME := lineage_mid7021_mq
PRODUCT_BRAND := onn
PRODUCT_MODEL := 100135924
PRODUCT_MANUFACTURER := onn

PRODUCT_GMS_CLIENTID_BASE := android-digiland

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sys_mssi_mid7021_mq_32-user 14 UP1A.231005.007 mp1V12661 release-keys" \
    BuildFingerprint=onn/100135924/mid7021_mq:14/UP1A.231005.007/qyh20260113:user/release-keys
