# Thunderstorms II - made by nalas

   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor thunderstorm
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq 130000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 1586000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/go_hispeed_load
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/go_hispeed_load 95
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/above_hispeed_delay
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/above_hispeed_delay "50000 650000:20000 754000:25000 962000:30000"
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_rate
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_rate 40000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/hispeed_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/hispeed_freq 650000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_slack
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/timer_slack 20000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/target_loads
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/target_loads "80 858000:85 1066000:90"
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/min_sample_time
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/min_sample_time 40000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/mode
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/mode 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boost
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boost 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/io_is_busy
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/io_is_busy 1
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/param_index
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/param_index 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boostpulse_duration
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/boostpulse_duration 20000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/down_low_load_threshold
   write /sys/devices/system/cpu/cpu0/cpufreq/thunderstorm/down_low_load_threshold 10

   # Big CPU
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor thunderstorm
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq 208000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 2288000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/go_hispeed_load
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/go_hispeed_load 95
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/above_hispeed_delay
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/above_hispeed_delay "75000 728000:40000 1040000:30000 1248000:30000"
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_rate
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_rate 40000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/hispeed_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/hispeed_freq 728000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_slack
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/timer_slack 20000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/target_loads
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/target_loads "80 832000:85 1040000:88 1352000:90"
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/min_sample_time
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/min_sample_time 40000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/mode
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/mode 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boost
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boost 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/io_is_busy
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/io_is_busy 1
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/param_index
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/param_index 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boostpulse_duration
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/boostpulse_duration 20000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/down_low_load_threshold
   write /sys/devices/system/cpu/cpu4/cpufreq/thunderstorm/down_low_load_threshold 15

   # CPU HOTPLUG
   write /sys/power/cpuhotplug/enabled 1
   write /sys/module/autosmp/parameters/enabled N
   write /sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster1_all_cores_max_freq 0
   write /sys/module/workqueue/parameters/power_efficient Y

   # Samsung Hotplug settings
   chmod 0664 /sys/power/cpuhotplug/max_online_cpu
   write /sys/power/cpuhotplug/max_online_cpu 8
   chmod 0664 /sys/power/cpuhotplug/min_online_cpu
   write /sys/power/cpuhotplug/min_online_cpu 1

   # FINGERPRINT BOOST
   write /sys/kernel/fp_boost/enabled 0

   # INPUT BOOST CPU
   write /sys/module/cpu_boost/parameters/input_boost_enabled 0

   # HMP
   chmod 0664 /sys/kernel/hmp/up_threshold
   write /sys/kernel/hmp/up_threshold 700
   chmod 0664 /sys/kernel/hmp/down_threshold
   write /sys/kernel/hmp/down_threshold 250
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
   write /proc/sys/kernel/random/write_wakeup_threshold 256
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
   write /sys/block/sda/queue/scheduler row
   write /sys/block/sda/queue/read_ahead_kb 640
   write /sys/block/mmcblk0/queue/scheduler row
   write /sys/block/mmcblk0/queue/read_ahead_kb 1024
   write /sys/block/sda/queue/iostats 0
   write /sys/block/mmcblk0/queue/iostats 0
   write /sys/block/sda/queue/rq_affinity 1
   write /sys/block/mmcblk0/queue/rq_affinity 1
   write /sys/block/sda/queue/nr_requests 256
   write /sys/block/mmcblk0/queue/nr_requests 256

   # Wakelocks
   write /sys/module/wakeup/parameters/enable_sensorhub_wl 0
   write /sys/module/wakeup/parameters/enable_ssp_wl 0
   write /sys/module/wakeup/parameters/enable_bcmdhd4359_wl 0
   write /sys/module/wakeup/parameters/enable_bluedroid_timer_wl 1
   write /sys/module/wakeup/parameters/enable_wlan_wake_wl 1
   write /sys/module/sec_battery/parameters/wl_polling 3
   write /sys/module/sec_nfc/parameters/wl_nfc 1

   # Misc
   write /sys/module/sync/parameters/fsync_enabled 1
   write /sys/kernel/dyn_fsync/Dyn_fsync_active 1
   write /sys/kernel/sched/gentle_fair_sleepers 0
   write /sys/kernel/sched/arch_power 0
   write /sys/kernel/power_suspend/power_suspend_mode 2
   #write /sys/kernel/power_suspend/power_suspend_mode 1
   #write /sys/kernel/power_suspend/power_suspend_state 1

   write /proc/sys/net/ipv4/tcp_congestion_control westwood

   # SWAP
   write /proc/sys/vm/swappiness 130
   write /proc/sys/vm/vfs_cache_pressure 50

   # LMK
   write /sys/module/lowmemorykiller/parameters/minfree "18920,23552,32256,42472,65536,102400"

   # WiFi
   setprop wifi.supplicant_scan_interval 500

   # Boeffla wakelocks
   write /sys/devices/virtual/misc/boeffla_wakelock_blocker/wakelock_blocker 'wlan_rx_wake;wlan_wake;wlan_ctrl_wake;wlan_txfl_wake;BT_bt_wake;BT_host_wake;mmc0_detect;nfc_wake_lock;13960000.decon_f;rmnet0;GPSD;umts_ipc0;NETLINK'

   ## END
