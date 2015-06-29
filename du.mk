# Inherit some common DU stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/asus/moorefield/device.mk)

# Enhanced NFC
$(call inherit-product, vendor/du/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := du_fhd
PRODUCT_BRAND := asus
PRODUCT_MODEL := ASUS_Z00A
PRODUCT_MANUFACTURER := asus
PRODUCT_DEVICE := fhd

PRODUCT_RUNTIMES := runtime_libart_default

DEVICE_PACKAGE_OVERLAYS += device/asus/moorefield/fhd/overlay

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=WW_Z00A \
    BUILD_FINGERPRINT=asus/WW_Z00A/Z00A:5.0/LRX21V/2.19.40.18_20150612_1183_user:user/release-keys \
    PRIVATE_BUILD_DESC="asusmofd_fhd-user 5.0 LRX21V 2.19.40.18_20150612_1183_user release-keys"
