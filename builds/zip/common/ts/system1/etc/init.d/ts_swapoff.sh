#!/system/bin/sh

# ThunderStorm bash script for ZRAM & VNSWAP - ON/OFF

# Set Variables
RESETPROP="/sbin/magisk resetprop -v -n"
TS_DIR="/data/.tskernel"

# Mount
mount -o remount,rw -t auto /
mount -t rootfs -o remount,rw rootfs
mount -o remount,rw -t auto /system
mount -o remount,rw /data
mount -o remount,rw /cache

# ZRAM assigns size limit to virtual ram disk
# echo 4096M > /sys/block/zram0/disksize
# echo "0" > /sys/block/zram0/reset
# ON
# swapon /dev/block/zram0 >/dev/null 2>&1
# for ZRAM in /dev/block/zram*; do
#    swapon $ZRAM
# done;

# ZRAM - OFF
# swapoff /dev/block/zram0 >/dev/null 2>&1
# for ZRAM in /dev/block/zram*; do
#    swapoff $ZRAM
# done;

# VNSWAP - OFF
su -c 'swapoff /dev/block/vnswap0'

# VNSWAP - ON
# su -c 'swapon /dev/block/vnswap0'

# Unmount
mount -o remount,ro -t auto /
mount -t rootfs -o remount,ro rootfs
mount -o remount,ro -t auto /system
mount -o remount,rw /data
mount -o remount,rw /cache

