# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOTANIMATION_HALF_RES := false

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)
$(call inherit-product, vendor/bliss/config/common_full.mk)

# Enhanced NFC
$(call inherit-product, vendor/bliss/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/lge/hammerheadcaf/full_hammerhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hammerheadcaf
PRODUCT_NAME := bliss_hammerheadcaf
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 5 CAF
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=hammerhead \
    BUILD_FINGERPRINT=google/hammerhead/hammerhead:5.1.1/LMY48B/1863243:user/release-keys \
    PRIVATE_BUILD_DESC="hammerhead-user 5.1.1 LMY48B 1863243 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
