# TWRP Device configuration for Samsung SM-E236B (m23xq)
========================================================

```
#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
```
## Device specifications
Basic    | Spec Sheet
--------:|:----------------------
SoC      | Qualcomm Snapdragon 750G
CPU      | Octa-core (6x1.8ghz Kryo 570 & 2x2.2ghz Cortex A77)
GPU      | Adreno 619
Memory   | 128GB 6GB RAM
Shipped Android version | Android 12, OneUI 4.1
Battery  | Li-ion 5000mAh, non-removable
Display  | LCD, 120Hz, 525 nits, 6.6 inch, 1080 x 2408 pixels, 20:9 ratio

## Device picture
<img src="https://user-images.githubusercontent.com/31782624/205670871-a460acce-c660-4dce-aa78-834673677a21.jpg" width="45%"/>

## Kernel Source
From Stock ROM m23xqxx-user 12 SP1A.210812.016 M236BXXU1AVH1 release-keys

## How to compile
First repo init the twrp-12.1 tree:

```
mkdir ~/android/twrp-12.1
cd ~/android/twrp-12.1
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
mkdir -p .repo/local_manifests
```

Then add to a local manifest (if you don't have .repo/local_manifest then make that directory and make a blank file and name it something like twrp.xml):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="android_device_samsung_m23xq" path="device/samsung/m23xq" remote="Aflaungos" revision="lineage-19.1"/>
</manifest>
```

Now you can sync your source:

```
repo sync
```

To automatically make the TWRP installer zip, you need to import this commit in the build/make path: https://gerrit.twrp.me/c/android_build/+/5445

Finally execute these:

```
. build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch twrp_m23xq-eng
mka bootimage
```
