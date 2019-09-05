#!/sbin/sh
#
# TSKernel Flash script 1.0
#
# Credit also goes to @djb77
# @lyapota, @Tkkg1994, @osm0sis
# @dwander for bits of code
# @MoRo


# Functions
ui_print() { echo -n -e "ui_print $1\n"; }

file_getprop() { grep "^$2" "$1" | cut -d= -f2; }

show_progress() { echo "progress $1 $2"; }

set_progress() { echo "set_progress $1"; }

set_perm() {
  chown $1.$2 $4
  chown $1:$2 $4
  chmod $3 $4
  chcon $5 $4
}

clean_magisk() {
	rm -rf /cache/*magisk* /cache/unblock /data/*magisk* /data/cache/*magisk* /data/property/*magisk* \
        /data/Magisk.apk /data/busybox /data/custom_ramdisk_patch.sh /data/app/com.topjohnwu.magisk* \
        /data/user*/*/magisk.db /data/user*/*/com.topjohnwu.magisk /data/user*/*/.tmp.magisk.config \
        /data/adb/*magisk* 2>/dev/null
}

abort() {
	ui_print "$*";
	echo "abort=1" > /tmp/aroma/abort.prop
	exit 1;
}

# Initialice TSkernel folder
mkdir -p -m 777 /data/.tskernel/apk 2>/dev/null

# Variables
BB=/sbin/busybox
SDK="$(file_getprop /system/build.prop ro.build.version.sdk)"
BL=`getprop ro.bootloader`
MODEL=${BL:0:4}
MODEL1=G930
MODEL1_DESC="S7 Flat G930"
MODEL2=G935
MODEL2_DESC="S7 Edge G935"
if [ $MODEL == $MODEL1 ]; then MODEL_DESC=$MODEL1_DESC; fi
if [ $MODEL == $MODEL2 ]; then MODEL_DESC=$MODEL2_DESC; fi



#======================================
# AROMA INIT
#======================================

set_progress 0.01

set_progress 0.10
show_progress 0.37 -4000

## FLASH KERNEL
ui_print " "
ui_print "@Flashing ThundeRStormS kernel..."

cd /tmp/ts
ui_print "-- Extracting"
$BB tar -Jxf kernel.tar.xz $MODEL-boot.img
ui_print "-- Flashing ThundeRStormS kernel $MODEL-boot.img"
dd of=/dev/block/platform/155a0000.ufs/by-name/BOOT if=/tmp/ts/$MODEL-boot.img
ui_print "-- Done"


set_progress 0.37


#======================================
# OPTIONS
#======================================


## THUNDERTWEAKS
if [ "$(file_getprop /tmp/aroma/menu.prop chk3)" == 1 ]; then
	ui_print " "
	ui_print "@Installing ThunderTweaks App..."
	sh /tmp/ts/ts_clean.sh com.moro.mtweaks -as
        sh /tmp/ts/ts_clean.sh com.thunder.thundertweaks -as
        sh /tmp/ts/ts_clean.sh com.hades.hKtweaks -as

	mkdir -p /data/media/0/ThunderTweaks
	mkdir -p /sdcard/ThunderTweaks

# DELETE OLDER APPS
	rm -f /sdcard/ThunderTweaks/*.*
	rm -f /vendor/app/HK/hKtweaks_v1.1.7.apk
	rm -rf /vendor/app/HK
##	rm -rf /sdcard/ThunderTweaks/*.*

# COPY NEW APP
	cp -rf /tmp/ts/ttweaks/*.apk /data/media/0/ThunderTweaks
	cp -rf /tmp/ts/ttweaks/*.apk /sdcard/ThunderTweaks
fi

## SPECTRUM PROFILES
if [ "$(file_getprop /tmp/aroma/menu.prop chk6)" == 1 ]; then
	ui_print " "
	ui_print "@Install Spectrum Profiles..."
	mkdir -p /data/media/0/Spectrum/profiles 2>/dev/null;
	mkdir -p /sdcard/Spectrum/profiles 2>/dev/null;
	cp -rf /tmp/ts/profiles/. /data/media/0/Spectrum/profiles/
	cp -rf /tmp/ts/profiles/. /sdcard/Spectrum/profiles/
fi

set_progress 0.50


