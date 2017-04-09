# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)



# OpenGL ES
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb 


PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp \
    persist.sys.usb.config=adb

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cam
PRODUCT_NAME := omni_cam
PRODUCT_BRAND := Honor
PRODUCT_MANUFACTURER := huawei
PRODUCT_MODEL := cam
