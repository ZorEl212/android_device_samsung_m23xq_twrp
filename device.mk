#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/samsung/m23xq


# VNDK
PRODUCT_TARGET_VNDK_VERSION := 30
# API
PRODUCT_SHIPPING_API_LEVEL := 30

# Dynamic partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Dependencies
TARGET_RECOVERY_DEVICE_MODULES += \
    libion
 
 # Encryption: Use common FBE decryption script
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Encryption: Setup it
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
    
# Fastbootd    
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd    

# Health 
RODUCT_PACKAGES += \
    android.hardware.health@2.1-impl \
    android.hardware.health@2.1-impl.recovery \
    android.hardware.health@2.1-service

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so
