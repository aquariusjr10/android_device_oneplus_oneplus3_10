# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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

# Inherit from oneplus3 device
$(call inherit-product, device/oneplus/oneplus3/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/zenx/config/common_full_phone.mk)

# Vendor security patch level
VENDOR_SECURITY_PATCH := 2019-10-01

PRODUCT_NAME := zenx_oneplus3
PRODUCT_DEVICE := oneplus3
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

BUILD_FINGERPRINT := "OnePlus/OnePlus3/OnePlus3:9/PKQ1.181203.001/1907311932:user/release-keys"

TARGET_VENDOR := oneplus

#Zenx stuffs
TARGET_BOOT_ANIMATION_RES := 1080
ZENX_BUILD_TYPE := Official

# Setup Gapps options
IS_PHONE := true
#TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_MINIMAL_APPS := false
#TARGET_SUPPORTS_GOOGLE_RECORDER := false
#Op Launcher
USE_OP_LAUNCHER := true
$(call inherit-product, vendor/oplauncher/OPLauncher2.mk)
GAPPS_VARIANT := nano
#$(call inherit-product, vendor/gapps/config.mk)