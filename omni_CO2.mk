# Inherit from common product
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device specific
$(call inherit-product, device/nokia/CO2/device.mk)

# Inherit from omni product
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier
PRODUCT_DEVICE := CO2
PRODUCT_NAME := omni_CO2
PRODUCT_MODEL := Nokia 5.1
PRODUCT_BRAND := Nokia
PRODUCT_MANUFACTURER := FIH

# Property overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.treble.enabled=true \
    ro.vendor.mtk_emmc_support=1 \
    ro.vendor.mtk_ufs_booting=0
