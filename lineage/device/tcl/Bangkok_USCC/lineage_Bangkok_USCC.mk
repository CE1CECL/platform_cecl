#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Bangkok_USCC device
$(call inherit-product, device/tcl/Bangkok_USCC/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_DEVICE := Bangkok_USCC
PRODUCT_NAME := lineage_Bangkok_USCC
PRODUCT_BRAND := TCL
PRODUCT_MODEL := 5102L
PRODUCT_MANUFACTURER := tcl

PRODUCT_GMS_CLIENTID_BASE := android-alcatel

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="5102L-user 11 RP1A.200720.011 vFQ6T release-keys" \
    BuildFingerprint=TCL/5102L/Bangkok_USCC:11/RP1A.200720.011/vFQ6T:user/release-keys
