#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# API levels
PRODUCT_SHIPPING_API_LEVEL := 26

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Product characteristics
PRODUCT_CHARACTERISTICS := nosdcard,watch

# Rootdir
PRODUCT_PACKAGES += \
    init.foreground.sh \
    init.qcom.audio.sh \
    sw_cfg.sh \

PRODUCT_PACKAGES += \
    fstab.catfish \
    init.catfish.rc \
    init.common.rc \
    init.qcom.usb.rc \
    init.target.rc \
    init.rc \
    ueventd.catfish.rc \
    ueventd.rc \

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/mobvoi/catfish/catfish-vendor.mk)
