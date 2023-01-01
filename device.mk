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
 
# Fastbootd    
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd    

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so

# Copy modules for depmod
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/llcc_perfmon.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/llcc_perfmon.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/mpq-adapter.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/mpq-adapter.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/mpq-dmx-hw-plugin.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/mpq-dmx-hw-plugin.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/rdbg.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/rdbg.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/rmnet_perf.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/rmnet_perf.ko \
    $(LOCAL_PATH)/recovery/root/vendor/lib/modules/rmnet_shs.ko:$(TARGET_COPY_OUT_RECOVERY)/root/vendor/lib/modules/rmnet_shs.ko \
