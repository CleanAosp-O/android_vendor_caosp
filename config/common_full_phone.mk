# Inherit common caosp stuff
$(call inherit-product, vendor/caosp/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_alert=Krypton.ogg

# Required caosp packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Launcher3
