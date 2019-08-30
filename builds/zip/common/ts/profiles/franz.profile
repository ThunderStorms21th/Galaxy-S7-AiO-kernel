# Thunderstorms - Franz

   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor thunderstorm
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq 130000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 1586000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/go_hispeed_load
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/go_hispeed_load 95
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/above_hispeed_delay
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/above_hispeed_delay "60000 650000:30000 754000:30000 962000:20000"
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_rate
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_rate 20000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/hispeed_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/hispeed_freq 858000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_slack
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_slack 20000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/target_loads
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/target_loads "75 1170000:85"
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/min_sample_time
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/min_sample_time 40000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/mode
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/mode 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boost
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boost 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/io_is_busy
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/io_is_busy 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/param_index
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/param_index 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boostpulse_duration
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boostpulse_duration 40000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/down_low_load_threshold
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/down_low_load_threshold 12

   # Big CPU
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor thunderstorm
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq 208000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 1560000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/go_hispeed_load
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/go_hispeed_load 95
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/above_hispeed_delay
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/above_hispeed_delay "80000 624000:50000 1040000:30000 1248000:30000"
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_rate
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_rate 20000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/hispeed_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/hispeed_freq 624000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_slack
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_slack 20000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/target_loads
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/target_loads "80 1040000:81 1352000:87 1664000:90"
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/min_sample_time
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/min_sample_time 40000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/mode
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/mode 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boost
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boost 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/io_is_busy
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/io_is_busy 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/param_index
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/param_index 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boostpulse_duration
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boostpulse_duration 80000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/down_low_load_threshold
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/down_low_load_threshold 20

   # CPU HOTPLUG
   write /sys/power/cpuhotplug/enabled 0
   write /sys/module/autosmp/parameters/enabled Y
   write /sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster1_all_cores_max_freq 0
   write /sys/module/workqueue/parameters/power_efficient N

   # FINGERPRINT BOOST
   write /sys/kernel/fp_boost/enabled 0

   # INPUT BOOST CPU
   write /sys/module/cpu_boost/parameters/input_boost_enabled 0

   # HMP
   chmod 0664 /sys/kernel/hmp/up_threshold
   write /sys/kernel/hmp/up_threshold 800
   chmod 0664 /sys/kernel/hmp/down_threshold
   write /sys/kernel/hmp/down_threshold 260
   chmod 0664 /sys/kernel/hmp/down_compensation_high_freq
   write /sys/kernel/hmp/down_compensation_high_freq 962000
   chmod 0664 /sys/kernel/hmp/down_compensation_mid_freq
   write /sys/kernel/hmp/down_compensation_mid_freq 858000
   chmod 0664 /sys/kernel/hmp/down_compensation_low_freq
   write /sys/kernel/hmp/down_compensation_low_freq 754000
   write /sys/devices/14ac0000.mali/throttling1 546
   write /sys/devices/14ac0000.mali/throttling2 419
   write /sys/devices/14ac0000.mali/throttling3 338
   write /sys/devices/14ac0000.mali/throttling4 260
   write /sys/devices/14ac0000.mali/trippimg 260
   write /proc/sys/kernel/random/write_wakeup_threshold 384
   write /proc/sys/kernel/random/read_wakeup_threshold 64
   write /proc/sys/vm/dirty_expire_centisecs 1500
   write /proc/sys/vm/dirty_writeback_centisecs 3000

   # GPU
   chmod 0664 /sys/devices/14ac0000.mali/max_clock
   write /sys/devices/14ac0000.mali/max_clock 650
   chmod 0664 /sys/devices/14ac0000.mali/min_clock
   write /sys/devices/14ac0000.mali/min_clock 112
   chmod 0664 /sys/devices/14ac0000.mali/power_policy
   write /sys/devices/14ac0000.mali/power_policy coarse_demand
   chmod 0664 /sys/devices/14ac0000.mali/dvfs_governor
   write /sys/devices/14ac0000.mali/dvfs_governor 1
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_clock
   write /sys/devices/14ac0000.mali/highspeed_clock 419
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_load
   write /sys/devices/14ac0000.mali/highspeed_load 90
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_delay
   write /sys/devices/14ac0000.mali/highspeed_delay 1

   # IO Scheduler
   write /sys/block/sda/queue/scheduler noop
   write /sys/block/sda/queue/read_ahead_kb 1024
   write /sys/block/mmcblk0/queue/scheduler noop
   write /sys/block/mmcblk0/queue/read_ahead_kb 2048
   write /sys/block/sda/queue/iostats 0
   write /sys/block/mmcblk0/queue/iostats 0
   write /sys/block/sda/queue/rq_affinity 1
   write /sys/block/mmcblk0/queue/rq_affinity 1
   write /sys/block/sda/queue/nr_requests 128
   write /sys/block/mmcblk0/queue/nr_requests 256

   # Wakelocks
   write /sys/module/wakeup/parameters/enable_sensorhub_wl 0
   write /sys/module/wakeup/parameters/enable_ssp_wl 0
   write /sys/module/wakeup/parameters/enable_bcmdhd4359_wl 1
   write /sys/module/wakeup/parameters/enable_bluedroid_timer_wl 0
   write /sys/module/wakeup/parameters/enable_wlan_wake_wl 1
   write /sys/module/sec_battery/parameters/wl_polling 5
   write /sys/module/sec_nfc/parameters/wl_nfc 2

   # Misc
   write /sys/module/sync/parameters/fsync_enabled 1
   write /sys/kernel/dyn_fsync/Dyn_fsync_active 1
   write /sys/kernel/sched/gentle_fair_sleepers 0
   write /sys/kernel/sched/arch_power 1
   write /sys/kernel/power_suspend/power_suspend_mode 3

   write /proc/sys/net/ipv4/tcp_congestion_control bic

   # SWAP
   write /proc/sys/vm/swappiness 80
   write /proc/sys/vm/vfs_cache_pressure 50

   # WiFi
   setprop wifi.supplicant_scan_interval 430
   
   ## AutoSMP Hotplug settings | bc - big core , lc - little core
   #echo "Y" > /sys/module/autosmp/parameters/enabled;
   # Y - enable, N - disable
   echo 35 > /sys/kernel/autosmp/conf/cpufreq_down_bc;
   # range 0 to 100
   echo 30 > /sys/kernel/autosmp/conf/cpufreq_down_lc;
   # range 0 to 100
   echo 90 > /sys/kernel/autosmp/conf/cpufreq_up_bc;
   # range 0 to 100
   echo 80 > /sys/kernel/autosmp/conf/cpufreq_up_lc;
   # range 0 to 100
   echo 1 > /sys/kernel/autosmp/conf/cycle_down;
   # max cycles 0 to 8
   echo 2 > /sys/kernel/autosmp/conf/cycle_up;
   # max cycyles 0 to 8
   echo 100 > /sys/kernel/autosmp/conf/delay;
   # range 0 to 500ms
   echo 2 > /sys/kernel/autosmp/conf/max_cpus_bc;
   # max cores ON  - 1 to 4
   echo 4 > /sys/kernel/autosmp/conf/max_cpus_lc;
   # max cores ON  - 1 to 4
   echo 1 > /sys/kernel/autosmp/conf/min_cpus_bc;
   # min cores OFF - 1 to 4
   echo 1 > /sys/kernel/autosmp/conf/min_cpus_lc;
   # min cores OFF - 1 to 4
   echo 1 > /sys/kernel/autosmp/conf/scroff_single_core;
   # 1- enable, 0 - disable

   # Boeffla wakelocks
   write /sys/devices/virtual/misc/boeffla_wakelock_blocker/wakelock_blocker 'wlan_rx_wake;wlan_wake;wlan_ctrl_wake;wlan_txfl_wake;BT_bt_wake;BT_host_wake;mmc0_detect;nfc_wake_lock;13960000.decon_f;rmnet0;GPSD;umts_ipc0;NETLINK'

   ## END
