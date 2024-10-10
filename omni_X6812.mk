#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X6812 device
$(call inherit-product, device/infinix/X6812/device.mk)

PRODUCT_DEVICE := X6812
PRODUCT_NAME := omni_X6812
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix HOT 11s
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_X6812-eng 16.1.0 RQ1A.210205.004 eng.runner.20241009.130525 test-keys"

BUILD_FINGERPRINT := Infinix/twrp_X6812/X6812:16.1.0/RQ1A.210205.004/runner10091303:eng/test-keys
