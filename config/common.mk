PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

# Additional Packages
PRODUCT_PACKAGES += \
    AndroidMessages \
    DeskClock \
    GBoard \
    LiveWallpapersPicker \
    PixelOverlay

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/caosp/overlay/common
include vendor/caosp/config/version.mk

# Oreo 8.1 sounds
include frameworks/base/data/sounds/AllAudio.mk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/caosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

