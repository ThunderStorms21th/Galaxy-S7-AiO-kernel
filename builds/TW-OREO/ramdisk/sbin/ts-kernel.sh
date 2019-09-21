#!/system/bin/sh

# ThunderStorm bash script for kernel and policy features settings v1.1
# Thanks to MoRoGoKu and djb77

# Set Variables

RESETPROP="/sbin/resetprop -v -n"
TS_DIR="/data/.tskernel"
LOG="$TS_DIR/tskernel.log"

rm -f $LOG

echo $(date) "ThundeRSTormS-Kernel LOG" >> $LOG;
echo " " >> $LOG;

# Mount
mount -o remount,rw -t auto /
mount -t rootfs -o remount,rw rootfs
mount -o remount,rw -t auto /system
mount -o remount,rw /data
mount -o remount,rw /cache

# Set KNOX to 0x0 on running /system
$RESETPROP ro.boot.warranty_bit "0"
$RESETPROP ro.warranty_bit "0"

# Fix Samsung Related Flags
$RESETPROP ro.fmp_config "1"
$RESETPROP ro.boot.fmp_config "1"

# Fix safetynet flags
$RESETPROP ro.boot.veritymode "enforcing"
$RESETPROP ro.boot.verifiedbootstate "green"
$RESETPROP ro.boot.flash.locked "1"
$RESETPROP ro.boot.ddrinfo "00000001"

# Stop services
su -c "stop secure_storage"
su -c "stop irisd"
su -c "stop proca"

# SELinux (0 / 640 = Permissive, 1 / 644 = Enforcing)
echo "## -- Selinux permissive" >> $LOG;
echo "0" > /sys/fs/selinux/enforce
chmod 640 /sys/fs/selinux/enforce
echo " " >> $LOG;

# SafetyNet
echo "## -- SafetyNet permissions" >> $LOG;
chmod 440 /sys/fs/selinux/policy
echo " " >> $LOG;

# Deepsleep fix (@Chainfire)
echo "## -- DeepSleep Fix" >> $LOG;
if [ -f /data/adb/su/su.d/000000deepsleep ]; then
	rm -f /data/adb/su/su.d/000000deepsleep
fi

for i in `ls /sys/class/scsi_disk/`; do
	cat /sys/class/scsi_disk/$i/write_protect 2>/dev/null | grep 1 >/dev/null
	if [ $? -eq 0 ]; then
		echo 'temporary none' > /sys/class/scsi_disk/$i/cache_type
	fi
done
echo " " >> $LOG;

# Google play services wakelock fix
echo "## -- GooglePlay wakelock fix" >> $LOG;
pm enable com.google.android.gms/.update.SystemUpdateActivity;
pm enable com.google.android.gms/.update.SystemUpdateService;
pm enable com.google.android.gms/.update.SystemUpdateService$ActiveReceiver;
pm enable com.google.android.gms/.update.SystemUpdateService$Receiver;
pm enable com.google.android.gms/.update.SystemUpdateService$SecretCodeReceiver;
echo " " >> $LOG;

# Fix personalist.xml
if [ ! -f /data/system/users/0/personalist.xml ]; then
	touch /data/system/users/0/personalist.xml
	chmod 600 /data/system/users/0/personalist.xml
	chown system:system /data/system/users/0/personalist.xml
fi

# PWMFix (0 = Disabled, 1 = Enabled)
echo "0" > /sys/class/lcd/panel/smart_on

# Kernel Panic off
echo "0" > /proc/sys/kernel/panic

# ZRAM assigns size limit to virtual ram disk
# echo 4096M > /sys/block/zram0/disksize
# echo "0" > /sys/block/zram0/reset
# ON
# swapon /dev/block/zram0 >/dev/null 2>&1
# for ZRAM in /dev/block/zram*; do
#    swapon $ZRAM
# done;

# OFF
#swapoff /dev/block/zram0 >/dev/null 2>&1
#for ZRAM in /dev/block/zram*; do
#    swapoff $ZRAM
#done;

# FINGERPRINT BOOST - OFF
echo "0" > /sys/kernel/fp_boost/enabled

# Tweaks: Internet Speed
echo "0" > /proc/sys/net/ipv4/tcp_timestamps
echo "1" > /proc/sys/net/ipv4/tcp_tw_reuse
echo "1" > /proc/sys/net/ipv4/tcp_sack
echo "1" > /proc/sys/net/ipv4/tcp_tw_recycle
echo "1" > /proc/sys/net/ipv4/tcp_window_scaling
echo "5" > /proc/sys/net/ipv4/tcp_keepalive_probes
echo "20" > /proc/sys/net/ipv4/tcp_keepalive_intvl
echo "20" > /proc/sys/net/ipv4/tcp_fin_timeout
echo "404480" > /proc/sys/net/core/wmem_max
echo "404480" > /proc/sys/net/core/rmem_max
echo "256960" > /proc/sys/net/core/rmem_default
echo "256960" > /proc/sys/net/core/wmem_default
echo "4096,16384,404480" > /proc/sys/net/ipv4/tcp_wmem
echo "4096,87380,404480" > /proc/sys/net/ipv4/tcp_rmem

# init.d
echo "## -- Start Init.d support" >> $LOG
if [ ! -d /system/etc/init.d ]; then
	mkdir -p /system/etc/init.d
fi
chown -R root.root /system/etc/init.d
chmod -R 755 /system/etc/init.d
for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
	echo "## Executing init.d script: $FILE" >> $LOG;
done;
for FILE2 in /system/etc/init.d/*.sh; do
	sh $FILE2 >/dev/null
	echo "## Executing init.d script: $FILE" >> $LOG;
done
echo "## -- End Init.d support" >> $LOG;
echo " " >> $LOG;

chmod 777 $LOG;

# Unmount
mount -o remount,ro -t auto /
mount -t rootfs -o remount,ro rootfs
mount -o remount,ro -t auto /system
mount -o remount,rw /data
mount -o remount,rw /cache

