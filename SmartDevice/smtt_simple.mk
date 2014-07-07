$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/generic.mk) 

DEVICE_PACKAGE_OVERLAYS :=

PRODUCT_PACKAGES  +=

PRODUCT_COPY_FILES +=

PRODUCT_NAME := smtt_simple
PRODUCT_DEVICE := SmartDevice
PRODUCT_MODEL := Smartmatic example template, first attempt.
