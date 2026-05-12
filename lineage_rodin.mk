#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rodin device
$(call inherit-product, device/xiaomi/rodin/device.mk)
TARGET_SHIPS_MIUICAMERA := true

# Axion Flags
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 20
AXION_MAINTAINER := SENX|センクス
AXION_PROCESSOR := Dimensity_8400U
TORCH_STR_SUPPORTED := true
TARGET_INCLUDE_AXFX := true
TARGET_ENABLE_BLUR := true
TARGET_TOUCH_BOOST_SUPPORTED := true
TARGET_INCLUDES_LOS_PREBUILTS := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := true

PRODUCT_DEVICE := rodin
PRODUCT_NAME := lineage_rodin
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2412DPC0AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_BRAND_FOR_ATTESTATION := $(PRODUCT_BRAND)
PRODUCT_DEVICE_FOR_ATTESTATION := $(PRODUCT_DEVICE)
PRODUCT_MODEL_FOR_ATTESTATION := $(PRODUCT_MODEL)
PRODUCT_NAME_FOR_ATTESTATION := rodin_eea
PRODUCT_MANUFACTURER_FOR_ATTESTATION := $(PRODUCT_MANUFACTURER)

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 16 BP2A.250605.031.A3 16OS3.1.260413.104217578.MTPEGL.S release-keys" \
    BuildFingerprint=POCO/rodin_eea/rodin:15/AP3A.240905.015.A2/OS3.0.300.0.WOJEUXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME) \
    SystemDevice=$(PRODUCT_SYSTEM_DEVICE) \
    SystemName=$(PRODUCT_SYSTEM_NAME)

