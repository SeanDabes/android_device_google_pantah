#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

TARGET_IS_PIXEL := true
TARGET_IS_PIXEL_7 := true
TARGET_PIXEL_STAND_SUPPORTED := true

# Inherit device configuration
DEVICE_CODENAME := cheetah
DEVICE_PATH := device/google/pantah
VENDOR_PATH := vendor/google/cheetah
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/gs201/derp_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-derp.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_NAME := derp_$(DEVICE_CODENAME)

# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cheetah-user 15 AP3A.241105.007 12470370 release-keys" \
    BuildFingerprint=google/cheetah/cheetah:15/AP3A.241105.007/12470370:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
