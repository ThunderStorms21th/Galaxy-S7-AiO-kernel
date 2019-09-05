#!/sbin/sh
#
# TSKernel Flash script 2.0
#
# Credit also goes to @djb77
# @lyapota, @Tkkg1994, @osm0sis, @morogoku
# @dwander for bits of code
# 

# Variables
BB=/sbin/busybox


#======================================
# OPTIONS
#======================================


## ThunderTweaks
sh /tmp/ts/ts_clean.sh com.thunder.thundertweaks -as

mkdir -p /data/media/0/ThunderTweaks
mkdir -p /sdcard/ThunderTweaks
cp -rf /tmp/ts/ttweaks/*.apk /data/media/0/ThunderTweaks
cp -rf /tmp/ts/ttweaks/*.apk /sdcard/ThunderTweaks

# mkdir -p /data/.tskernel
# cp -rf /tmp/ts/ttweaks/*.apk /data/.tskernel



