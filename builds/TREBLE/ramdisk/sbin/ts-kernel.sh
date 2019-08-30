#!/system/bin/sh

# ThunderStorm bash script for kernel and policy features settings v1.0 for TREBLE
# Thanks to MoRoGoKu and djb77 and AnanJaser1211

# Set Variables

# RESETPROP="/sbin/magisk resetprop -v -n"
RESETPROP="/sbin/resetprop -v -n"
TS_DIR="/data/.tskernel"
LOG="$TS_DIR/tskernel.log"
bb=/sbin/busybox;

# Create ThundeRSTormS kernel folder
if [ ! -d $TS_DIR ]; then
	mkdir -p $TS_DIR;
fi

rm -f $LOG

echo $(date) "ThundeRSTormS-Kernel LOG" >> $LOG;
echo " " >> $LOG;

# Mount
mount -t rootfs -o remount,rw rootfs;
mount -o remount,rw /system;
mount -o remount,rw /data;
mount -o remount,rw /

# RMM patch (part)
echo "## -- Removed RMM secure" >> $LOG;
if [ -d /system/priv-app/Rlc ]; then
	rm -rf /system/priv-app/Rlc
fi

# Stop services
# su -c "stop secure_storage"
# su -c "stop irisd"
# su -c "stop proca"

# SELinux (0 / 640 = Permissive, 1 / 644 = Enforcing)
# echo "## -- Selinux permissive" >> $LOG;
# chmod 644 /sys/fs/selinux/enforce
# setenforce 0
# echo " " >> $LOG;

# SafetyNet
echo "## -- SafetyNet permissions" >> $LOG;
chmod 440 /sys/fs/selinux/policy
echo " " >> $LOG;

# Disabling unauthorized changes warnings...
echo "## -- Disabling unauthorized changes warnings" >> $LOG;
if [ -d /system/app/SecurityLogAgent ]; then
rm -rf /system/app/SecurityLogAgent
fi
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

# Fix personalist.xml
echo "## -- Fix personal list" >> $LOG;
if [ ! -f /data/system/users/0/personalist.xml ]; then
	touch /data/system/users/0/personalist.xml
	chmod 600 /data/system/users/0/personalist.xml
	chown system:system /data/system/users/0/personalist.xml
fi

# Tweaking logging, debugubg, tracing
# echo "## -- Disable tracing" >> $LOG;
# dmesg -n 1 -C
# $RUN echo "N" > /sys/kernel/debug/debug_enabled
# $RUN echo "N" > /sys/kernel/debug/seclog/seclog_debug
# $RUN echo "0" > /sys/kernel/debug/tracing/tracing_on

# PWMFix (0 = Disabled, 1 = Enabled)
echo "0" > /sys/class/lcd/panel/smart_on

# Kernel Panic off
echo "0" > /proc/sys/kernel/panic
# $bb sysctl -w vm.panic_on_oom=0
# $bb sysctl -w kernel.panic_on_oops=0
# $bb sysctl -w kernel.panic=0

# Stock CPU Settings
# echo 'interactive' > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo "2288000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
echo "312000" > /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
echo "1586000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
echo "234000" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
echo "858000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/hispeed_freq
echo "1248000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/hispeed_freq
echo "19000 1274000:40000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/above_hispeed_delay
echo "65000 1248000:79000 1664000:19000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/above_hispeed_delay
echo "75 1170000:85" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/target_loads
echo "80 1040000:81 1352000:87 1664000:90" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/target_loads
echo "85" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/go_hispeed_load
echo "89" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/go_hispeed_load
echo "40000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/min_sample_time
echo "40000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/min_sample_time
echo "30000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_rate
echo "30000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_rate
echo "20000" > /sys/devices/system/cpu/cpu0/cpufreq/interactive/timer_slack
echo "20000" > /sys/devices/system/cpu/cpu4/cpufreq/interactive/timer_slack

# HMP settings
echo "524" > /sys/kernel/hmp/up_threshold
echo "214" > /sys/kernel/hmp/down_threshold
echo "962000" > /sys/kernel/hmp/down_compensation_high_freq
echo "858000" > /sys/kernel/hmp/down_compensation_mid_freq
echo "754000" > /sys/kernel/hmp/down_compensation_low_freq

# Stock GPU Settings
echo "650" > /sys/devices/14ac0000.mali/max_clock
echo "112" > /sys/devices/14ac0000.mali/min_clock
echo "419" /sys/devices/14ac0000.mali/highspeed_clock
echo "1" /sys/devices/14ac0000.mali/highspeed_delay
echo "93" /sys/devices/14ac0000.mali/highspeed_load

# I/O sched settings
echo 'cfq' > /sys/block/sda/queue/scheduler
echo "512" > /sys/block/sda/queue/read_ahead_kb
echo 'bfq' > /sys/block/mmcblk0/queue/scheduler
echo "768" > /sys/block/mmcblk0/queue/read_ahead_kb
echo "0" > /sys/block/sda/queue/iostats
echo "0" > /sys/block/mmcblk0/queue/iostats
echo "1" > /sys/block/sda/queue/rq_affinity
echo "1" > /sys/block/mmcblk0/queue/rq_affinity
echo "256" > /sys/block/sda/queue/nr_requests
echo "256" > /sys/block/mmcblk0/queue/nr_requests

# LMK
echo "18432,23040,27648,32256,56064,81152" > /sys/module/lowmemorykiller/parameters/minfree
# echo "18920,23552,32256,42472,65536,102400" > /sys/module/lowmemorykiller/parameters/minfree

# SSWAP and Entropy
echo "150" > /proc/sys/vm/swappiness
echo "640" > /proc/sys/kernel/random/write_wakeup_threshold
echo "64" > /proc/sys/kernel/random/read_wakeup_threshold
echo "1000" > /proc/sys/vm/dirty_expire_centisecs
echo "2000" > /proc/sys/vm/dirty_writeback_centisecs
echo "50" > /proc/sys/vm/vfs_cache_pressure

# ZRAM assigns size limit to virtual ram disk
# echo "4096M" > /sys/block/zram0/disksize
# echo "1" > /sys/block/zram0/reset
# echo "0" > /sys/block/zram0/reset

# ON
# swapon /dev/block/zram0 >/dev/null 2>&1
# for ZRAM in /dev/block/zram*; do
#    swapon $ZRAM
# done;

# OFF
# swapoff /dev/block/zram0 >/dev/null 2>&1
# for ZRAM in /dev/block/zram*; do
#    swapoff $ZRAM
# done;

# FINGERPRINT BOOST - OFF
echo "0" > /sys/kernel/fp_boost/enabled

# Tweaks: Internet Speed
echo 'bic' > /proc/sys/net/ipv4/tcp_congestion_control
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
chmod 777 /system/etc/init.d

if [ "$(ls -A /system/etc/init.d)" ]; then
    chmod 777 /system/etc/init.d/*;

for FILE in /system/etc/init.d/*; do
	sh $FILE >/dev/null
	echo "## Executing init.d script: $FILE" >> $LOG;
done;

#for FILE2 in /system/etc/init.d/*.sh; do
#	sh $FILE2 >/dev/null
#	echo "## Executing init.d script: $FILE" >> $LOG;
#done;
echo "## -- End Init.d support" >> $LOG;
echo " " >> $LOG;

chmod 777 $LOG;

# Unmount
mount -t rootfs -o remount,ro rootfs;
mount -o remount,ro /system;
mount -o remount,rw /data;
mount -o remount,ro /;

