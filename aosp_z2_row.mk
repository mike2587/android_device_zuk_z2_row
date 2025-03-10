#
# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017, The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from z2_row device
$(call inherit-product, device/zuk/z2_row/device.mk)

# Boot animation resolution
# TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common AOSP-OMS stuff.
$(call inherit-product, vendor/aosp/common.mk)

PRODUCT_NAME := aosp_z2_row
PRODUCT_DEVICE := z2_row
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := ZUK Z2121

PRODUCT_GMS_CLIENTID_BASE := android-zuk

TARGET_VENDOR_PRODUCT_NAME := z2_row
TARGET_VENDOR_DEVICE_NAME := z2_row

TARGET_VENDOR := ZUK

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="z2_row-user 8.0.0 OPR1.170623.032 3.5.344_180404 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "ZUK/z2_row/z2_row:8.0.0/OPR1.170623.032/3.5.344_180404:user/release-keys"
