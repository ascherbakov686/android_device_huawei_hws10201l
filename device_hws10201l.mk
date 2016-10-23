# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product-if-exists, vendor/huawei/hws10201l/hws10201l-vendor.mk)

PRODUCT_AAPT_CONFIG := xlarge mdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

DEVICE_PACKAGE_OVERLAYS += device/huawei/hws10201l/overlay

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=30 \
    tf.enable=y \
    drm.service.enabled=true

include frameworks/native/build/tablet-dalvik-heap.mk

PRODUCT_CHARACTERISTICS := tablet

# Permissions
#PRODUCT_COPY_FILES += \
#    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
#    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
#    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
#    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

# Bootanimation
PRODUCT_BOOTANIMATION := vendor/cm/prebuilt/common/bootanimation/800.zip

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hws10201l/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := cm_hws10201l
PRODUCT_DEVICE := hws10201l
