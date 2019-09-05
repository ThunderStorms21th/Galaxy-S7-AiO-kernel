#!/sbin/sh
# ------------------------------
# ThundeRStormS KERNEL INSTALLER
# Created by @djb77
#
# Credit also goes to @Tkkg1994,
# @lyapota, @Morogoku and 
# @dwander for bits of code
# ------------------------------

# Block location
BLOCK=/dev/block/platform/155a0000.ufs/by-name

# Variables
TSTEMP=/tmp/tstemp
AROMA=/tmp/aroma
TS=/data/media/0/TSkernel
CONFIG=$TGP/config
KERNELPATH=$TSTEMP/kernels
BUILDPROP=/system/build.prop

	## System Patches

	# Clean Apex data
	rm -rf /data/data/com.sec.android.app.apex
	# Remove init.d Placeholder
	rm -f /system/etc/init.d/placeholder
	# Delete Wakelock.sh 
	rm -f /magisk/phh/su.d/wakelock*
	rm -f /su/su.d/wakelock*
	rm -f /system/su.d/wakelock*
	rm -f /system/etc/init.d/wakelock*




