# Inherit AOSP device configuration for passion.
$(call inherit-product, device/motorola/umts_sholes/umts_sholes.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)
#
# ^^ commented out, as we need dun type set in internet apns for the 3G Mobile Hotspot
# to work, so we use our own separate apn list and include the rest of GSM stuff below
#
# it will go away once the native wifi tether will work,
# (if the free time needed for it will be found in the future ;)

# GSM SPN overrides list
PRODUCT_COPY_FILES += \
    vendor/cyanogen/prebuilt/common/etc/spn-conf.xml:system/etc/spn-conf.xml

# SIM Toolkit
PRODUCT_PACKAGES += \
    Stk

# Include the Flashlight/Torch
PRODUCT_PACKAGES += Torch

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_umts_sholes
PRODUCT_BRAND := motorola
PRODUCT_DEVICE := umts_sholes
PRODUCT_MODEL := Milestone
PRODUCT_MANUFACTURER := Motorola
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=SHOLS_U2_05.26.3 PRODUCT_NAME=umts_sholes TARGET_DEVICE=umts_sholes BUILD_FINGERPRINT=MOTO_RTEU/umts_sholes/umts_sholes/sholes:2.2.1/SHOLS_U2_05.26.3/296482885:user/release-keys PRODUCT_BRAND=MOTO_RTEU PRIVATE_BUILD_DESC="umts_sholes-user 2.2.1 SHOLS_U2_05.26.3 296482885 release-keys" BUILD_NUMBER=296482885 BUILD_UTC_DATE=1295422848 TARGET_BUILD_TYPE=user BUILD_VERSION_TAGS=release-keys USER=android-build

# Release name and versioning
PRODUCT_RELEASE_NAME := Milestone
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-umts_sholes.map

PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/hdpi/media/bootanimation.zip:system/media/bootanimation.zip

