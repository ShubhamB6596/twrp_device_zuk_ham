#
# Copyright 2019 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := ham

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_l_mr1.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8974

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ham
PRODUCT_NAME := omni_ham
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := ZUK Z1
PRODUCT_MANUFACTURER := ZUK

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

TARGET_VENDOR := zuk
TARGET_VENDOR_PRODUCT_NAME := ham
TARGET_VENDOR_DEVICE_NAME := Z1

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Z1 \
    PRODUCT_NAME=ham \
    PRIVATE_BUILD_DESC="ham-user 5.1.1 LMY49J YOG4PAS9IG release-keys"

BUILD_FINGERPRINT := ZUK/ham/Z1:5.1.1/LMY49J/YOG4PAS9IG:user/release-keys
