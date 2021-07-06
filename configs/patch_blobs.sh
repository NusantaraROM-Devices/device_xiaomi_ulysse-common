#!/sbin/sh

FDT_MODEL=`cat /sys/firmware/devicetree/base/model`
VENDOR_BLOCK=/dev/block/bootdevice/by-name/cust
VENDOR_MOUNT=/vendor

if [ "$FDT_MODEL" = "Qualcomm Technologies, Inc. MSM8940-PMI8937 MTP" ]; then
	DEVICE="ugg"
elif [ "$FDT_MODEL" = "Qualcomm Technologies, Inc. MSM8917-PMI8937 MTP" ]; then
	DEVICE="ugglite"
fi

umount /vendor

mount -o rw,discard $VENDOR_BLOCK $VENDOR_MOUNT

if [[ "$DEVICE" == "ugglite" ]]; then
    rm -rf $VENDOR_MOUNT/lib/android.hardware.biometrics.fingerprint@2.1.so
    rm -rf $VENDOR_MOUNT/lib64/android.hardware.biometrics.fingerprint@2.1.so
    rm -rf $VENDOR_MOUNT/lib64/hw/gf_fingerprint.default.so
    rm -rf $VENDOR_MOUNT/lib64/libgf_algo.so
    rm -rf $VENDOR_MOUNT/lib64/libgf_ca.so
    rm -rf $VENDOR_MOUNT/lib64/libgf_hal.so
    rm -rf $VENDOR_MOUNT/lib64/libgoodixfingerprintd_binder.so
    rm -rf $VENDOR_MOUNT/lib64/libsoftkeymaster.so
    rm -rf $VENDOR_MOUNT/bin/hw/android.hardware.biometrics.fingerprint@2.1-service
    rm -rf $VENDOR_MOUNT/etc/init/android.hardware.biometrics.fingerprint@2.1-service.rc
    rm -rf $VENDOR_MOUNT/etc/permissions/com.fingerprints.extension.xml
    rm -rf $VENDOR_MOUNT/framework/com.fingerprints.extension.jar
    rm -rf $VENDOR_MOUNT/lib64/com.fingerprints.extension@1.0.so
    rm -rf $VENDOR_MOUNT/lib64/libvendor.goodix.hardware.fingerprint@1.0-service.so
    rm -rf $VENDOR_MOUNT/lib64/libvendor.goodix.hardware.fingerprint@1.0.so
    rm -rf $VENDOR_MOUNT/lib64/vendor.qti.hardware.fingerprint@1.0.so
    rm -rf $VENDOR_MOUNT/lib/lib_fpc_tac_shared.so
    rm -rf $VENDOR_MOUNT/lib64/lib_fpc_tac_shared.so
    rm -rf $VENDOR_MOUNT/lib64/hw/fingerprint.default.so
fi

umount $VENDOR_MOUNT
