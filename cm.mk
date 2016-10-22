# Release name
PRODUCT_RELEASE_NAME := hws10201l

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/hws10201l/device_hws10201l.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hws10201l
PRODUCT_NAME := cm_hws10201l
PRODUCT_BRAND := huawei
PRODUCT_MODEL := hws10201l
PRODUCT_MANUFACTURER := huawei
