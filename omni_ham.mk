#
# Copyright 2012 The Android Open Source Project
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
#

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Time Zone data for recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_NAME := omni_ham
PRODUCT_DEVICE := ham
PRODUCT_BRAND := zuk
PRODUCT_MODEL := Z1
PRODUCT_MANUFACTURER := Zuk
TARGET_VENDOR_DEVICE_NAME := Z1
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=Z1 PRODUCT_NAME=ham

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ZUK/ham/Z1:5.1.1/LMY49J/YOG4PAS9IG:user/release-keys" \
    PRIVATE_BUILD_DESC="ham-user 5.1.1 LMY49J YOG4PAS9IG release-keys"
