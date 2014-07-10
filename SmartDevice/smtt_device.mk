$(call inherit-product, device/fsl/imx6/imx6.mk)
$(call inherit-product-if-exists,vendor/google/products/gms.mk)


# Overrides
PRODUCT_NAME := smtt_device
PRODUCT_DEVICE := SmartDevice
PRODUCT_BRAND := testing
PRODUCT_MANUFACTURER := smartmatic

DEVICE_PACKAGE_OVERLAYS :=

PRODUCT_PACKAGES  +=

PRODUCT_COPY_FILES += \
	device/boundary/nitrogen6x/required_hardware.xml:system/etc/permissions/required_hardware.xml \
	device/boundary/nitrogen6x/init.rc:root/init.freescale.rc \
	device/boundary/nitrogen6x/init.rc:root/init.boundary.rc \
	device/boundary/nitrogen6x/ueventd.boundary.rc:root/ueventd.freescale.rc \
	device/boundary/nitrogen6x/setwlanmac:system/bin/setwlanmac \
	device/boundary/nitrogen6x/vold.fstab:system/etc/vold.fstab \
	device/boundary/nitrogen6x/fstab.boundary:root/fstab.boundary \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/eGalax_Touch_Screen.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/ft5x06.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/tsc2004.idc \
	device/fsl/common/input/eGalax_Touch_Screen.idc:system/usr/idc/fusion_F0710A.idc \
	kernel_imx/arch/arm/boot/uImage:boot/uImage \
	device/boundary/nitrogen6x/wl1271-nvs.bin:system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
	device/boundary/wl12xx/wl1271-fw-2.bin:system/etc/firmware/ti-connectivity/wl1271-fw-2.bin \
	device/boundary/wl12xx/TIInit_7.6.15.bts:system/etc/firmware/TIInit_7.6.15.bts \
	device/boundary/wl12xx/TIInit_7.2.31.bts:system/etc/firmware/TIInit_7.2.31.bts \
	device/boundary/nitrogen6x/audio_policy.conf:system/etc/audio_policy.conf \
	device/boundary/nitrogen6x/audio_effects.conf:system/vendor/etc/audio_effects.conf \
	frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
	device/boundary/expose-leds:system/bin/expose-leds \


PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=wlan0 \
       ro.sf.lcd_density=120
       
# GPU files

DEVICE_PACKAGE_OVERLAYS := device/boundary/nitrogen6x/overlay


PRODUCT_PACKAGES += uim-sysfs \
        bt_sco_app \
        BluetoothSCOApp \
        TIInit_10.6.15.bts \
        TIInit_7.2.31.bts \
        TIInit_7.6.15.bts

PRODUCT_PACKAGES += \
	wl1271-fw-2.bin \
	wl1271-nvs.bin

include device/boundary/openssh.mk

PRODUCT_PACKAGES += ethernet

PRODUCT_MODEL := Smartmatic example template, second attempt. (From boundary base).
