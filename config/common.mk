PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

PRODUCT_PACKAGES += \
    GBoard \
    GoogleFiles \
    Pixel2Launcher \
    PixelOverlay

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/caosp/overlay/common

# Google sounds
include vendor/caosp/google/GoogleAudio.mk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/caosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

