
# Copyright (C) 2017 CleanOS
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

# Inherit common product files.
$(call inherit-product, vendor/caosp/config/common.mk)

# Inherit AOSP device configuration for shamu.
$(call inherit-product, device/moto/shamu/aosp_shamu.mk)

# Boot Animation
PRODUCT_COPY_FILES += \
    vendor/caosp/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip

# Setup device specific product configuration.
PRODUCT_NAME := caosp_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 6
PRODUCT_MANUFACTURER := motorola
PRODUCT_RESTRICT_VENDOR_FILES := false

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=shamu \
    BUILD_FINGERPRINT=google/shamu/shamu:7.0/NBD91U/3408911:user/release-keys \
    PRIVATE_BUILD_DESC="shamu-user 7.0 NBD91U 3408911 release-keys"
