# Inherit common caosp stuff
$(call inherit-product, vendor/caosp/config/common.mk)

# Required caosp packages
PRODUCT_PACKAGES += \
    CellBroadcastReceiver \
    Launcher3
