# Inherit common androidx stuff
$(call inherit-product, vendor/caosp/config/common.mk)

# Required packages
PRODUCT_PACKAGES += \
    Launcher3
