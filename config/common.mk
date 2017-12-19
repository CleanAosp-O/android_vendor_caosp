PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.selinux=1

# Disable ADB authentication
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0

# Don't compile SystemUITests
EXCLUDE_SYSTEMUI_TESTS := true

PRODUCT_PACKAGES += \
    PixelOverlay \
    NexusOverlay

PRODUCT_PACKAGES += \
    GBoard \
    Pixel2Launcher

PRODUCT_PACKAGES += \
    AndroidDarkThemeOverlay \
    SettingsDarkThemeOverlay \
    SysuiDarkThemeOverlay

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/caosp/overlay/common
include vendor/caosp/config/version.mk
 
# Google sounds
include vendor/caosp/google/GoogleAudio.mk

# World APN list
PRODUCT_COPY_FILES += \
    vendor/caosp/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml

