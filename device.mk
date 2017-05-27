#
# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/motorola/titan

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/motorola/titan/titan-vendor.mk)


#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/rootdir/etc/fstab.qcom:root/fstab.qcom \
#    $(LOCAL_PATH)/rootdir/etc/init.mmi.boot.sh:root/init.mmi.boot.sh \
#    $(LOCAL_PATH)/rootdir/etc/init.mmi.touch.sh:root/init.mmi.touch.sh \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:root/init.qcom.bt.sh \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.rc:root/init.qcom.rc \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.ril.sh:root/init.qcom.ril.sh \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.ssr.sh:root/init.qcom.ssr.sh \
#    $(LOCAL_PATH)/rootdir/etc/init.qcom.usb.rc:root/init.qcom.usb.rc \
#    $(LOCAL_PATH)/rootdir/etc/init.recovery.qcom.rc:root/init.recovery.qcom.rc \
#    $(LOCAL_PATH)/rootdir/etc/init.target.rc:root/init.target.rc \
#    $(LOCAL_PATH)/rootdir/etc/mount_pds.sh:root/mount_pds.sh \
#    $(LOCAL_PATH)/rootdir/etc/ueventd.qcom.rc:root/ueventd.qcom.rc \


# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf


# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Audio configuration
PRODUCT_COPY_FILES += \
    
# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    init.target.rc

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin

# Ubuntu Overlay Files
PRODUCT_COPY_FILES += \
    device/motorola/titan/ubuntu/adbd.conf:system/ubuntu/etc/init/adbd.conf \
    device/motorola/titan/ubuntu/bluetooth-touch-titan.conf:system/ubuntu/etc/init/bluetooth-touch-titan.conf \
    device/motorola/titan/ubuntu/titan.conf:system/ubuntu/etc/ubuntu-touch-session.d/titan.conf \
    device/motorola/titan/ubuntu/set-brightness-titan.conf:system/ubuntu/etc/set-brightness-titan.conf \
    device/motorola/titan/ubuntu/ubuntu-location-service.conf:system/ubuntu/etc/ubuntu-location-service.conf \
    device/motorola/titan/ubuntu/70-titan.rules:system/ubuntu/usr/lib/lxc-android-config/70-titan.rules \
    device/motorola/titan/rootdir/root/init.qcom.factory.sh:root/init.qcom.factory.sh \
    device/motorola/titan/ubuntu/config.xml:system/ubuntu/usr/share/repowerd/device-configs/config-titan.xml \
    device/motorola/titan/ubuntu/ofono.override:system/ubuntu/etc/init/ofono.override

# Configs
PRODUCT_COPY_FILES += \
    device/motorola/titan/rootdir/root/init_wlan_bt.sh:system/etc/init_wlan_bt.sh


# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8226 \
    audio.r_submix.default \
    audio.usb.default

PRODUCT_PACKAGES += \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix



# Camera
PRODUCT_PACKAGES += \
    libxml2

# Display
PRODUCT_PACKAGES += \
    copybit.msm8226 \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    memtrack.msm8226 \
    liboverlay

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# Filesystem
PRODUCT_PACKAGES += \
    setup_fs

# FM
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.msm8226

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Keystore
PRODUCT_PACKAGES += \
    keystore.msm8226

# Lights
PRODUCT_PACKAGES += \
    lights.msm8226

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml

# OMX
PRODUCT_PACKAGES += \
    libdashplayer \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefrighthw \
    qcmediaplayer

PRODUCT_BOOT_JARS += \
    qcmediaplayer

# Power
PRODUCT_PACKAGES += \
    power.msm8226

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.bt.sh \
    init.qcom.ril.sh \
    mount_pds.sh

PRODUCT_PACKAGES += \
    init.mmi.boot.sh \
    init.mmi.touch.sh \
    init.qcom.rc \
    init.qcom.ssr.sh \
    init.qcom.usb.rc \
    init.recovery.qcom.rc \
    ueventd.qcom.rc

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine-8226.conf:system/etc/thermal-engine-8226.conf

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd_default.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

PRODUCT_PACKAGES += \
    WCNSS_qcom_wlan_factory_nv.bin

PRODUCT_PACKAGES += \
    libcurl \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    wcnss_service

PRODUCT_COPY_FILES += \
    kernel/motorola/msm8226/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/motorola/msm8226/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
#$(call inherit-product-if-exists, hardware/qcom/msm8x74/msm8x74.mk)

