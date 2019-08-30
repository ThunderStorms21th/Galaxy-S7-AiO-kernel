# Optimum Profile by Mustfa
   
   # Little CPU
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor Lionheart
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq 130000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq 1586000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/down_threshold
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/down_threshold 40
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/freq_step
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/freq_step 5
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/ignore_nice_load
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/ignore_nice_load 0
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_down_factor
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_down_factor 1
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_rate
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_rate 10000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_rate_min
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/sampling_rate_min 10000
   chmod 0664 /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/up_threshold
   write /sys/devices/system/cpu/cpu0/cpufreq/Lionheart/up_threshold 90

   # Big CPU
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_governor Lionheart
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_min_freq 208000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq
   write /sys/devices/system/cpu/cpu4/cpufreq/scaling_max_freq 2600000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq//Lionheart/down_threshold
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/down_threshold 40
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/freq_step
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/freq_step 5
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/ignore_nice_load
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/ignore_nice_load 0
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_down_factor
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_down_factor 1
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_rate
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_rate 10000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_rate_min
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/sampling_rate_min 10000
   chmod 0664 /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/up_threshold
   write /sys/devices/system/cpu/cpu4/cpufreq/Lionheart/up_threshold 90

   # CPU HOTPLUG
   write /sys/power/cpuhotplug/enabled 0
   write /sys/module/autosmp/parameters/enabled Y
   write /sys/devices/system/cpu/cpufreq/mp-cpufreq/cluster1_all_cores_max_freq 1
   write /sys/module/workqueue/parameters/power_efficient N
   
   ## AutoSMP Hotplug settings | bc - big core , lc - little core
#echo "Y" > /sys/module/autosmp/parameters/enabled;
 # Y - enable, N - disable
echo 60 > /sys/kernel/autosmp/conf/cpufreq_down_bc;
 # range 0 to 100
echo 35 > /sys/kernel/autosmp/conf/cpufreq_down_lc;
 # range 0 to 100
echo 80 > /sys/kernel/autosmp/conf/cpufreq_up_bc;
 # range 0 to 100
echo 40 > /sys/kernel/autosmp/conf/cpufreq_up_lc;
 # range 0 to 100
echo 0 > /sys/kernel/autosmp/conf/cycle_down;
 # max cycles 0 to 8
echo 1 > /sys/kernel/autosmp/conf/cycle_up;
 # max cycyles 0 to 8
echo 40 > /sys/kernel/autosmp/conf/delay;
# range 0 to 500ms
echo 4 > /sys/kernel/autosmp/conf/max_cpus_bc;
 # max cores ON  - 1 to 4
echo 4 > /sys/kernel/autosmp/conf/max_cpus_lc;
 # max cores ON  - 1 to 4
echo 1 > /sys/kernel/autosmp/conf/min_cpus_bc;
 # min cores OFF - 1 to 4
echo 1 > /sys/kernel/autosmp/conf/min_cpus_lc;
 # min cores OFF - 1 to 4
echo 1 > /sys/kernel/autosmp/conf/scroff_single_core;
 # 1- enable, 0 - disable


   # FINGERPRINT BOOST
   write /sys/kernel/fp_boost/enabled 0

   # HMP
   chmod 0664 /sys/kernel/hmp/up_threshold
   write /sys/kernel/hmp/up_threshold 500
   chmod 0664 /sys/kernel/hmp/down_threshold
   write /sys/kernel/hmp/down_threshold 200
   chmod 0664 /sys/kernel/hmp/down_compensation_high_freq
   write /sys/kernel/hmp/down_compensation_high_freq 1170000
   chmod 0664 /sys/kernel/hmp/down_compensation_mid_freq
   write /sys/kernel/hmp/down_compensation_mid_freq 962000
   chmod 0664 /sys/kernel/hmp/down_compensation_low_freq
   write /sys/kernel/hmp/down_compensation_low_freq 858000
   write /sys/devices/14ac0000.mali/throttling1 600
   write /sys/devices/14ac0000.mali/throttling2 546
   write /sys/devices/14ac0000.mali/throttling3 338
   write /sys/devices/14ac0000.mali/throttling4 260
   write /sys/devices/14ac0000.mali/trippimg 260
   write /sys/devices/14ac0000.mali/highspeed_delay 0   
   write /proc/sys/kernel/random/write_wakeup_threshold 896
   write /proc/sys/kernel/random/read_wakeup_threshold 128
   write /proc/sys/vm/dirty_expire_centisecs 500
   write /proc/sys/vm/dirty_writeback_centisecs 1000

   # GPU
   chmod 0664 /sys/devices/14ac0000.mali/max_clock
   write /sys/devices/14ac0000.mali/max_clock 806
   chmod 0664 /sys/devices/14ac0000.mali/min_clock
   write /sys/devices/14ac0000.mali/min_clock 112
   chmod 0664 /sys/devices/14ac0000.mali/power_policy
   write /sys/devices/14ac0000.mali/power_policy coarse_demand
   chmod 0664 /sys/devices/14ac0000.mali/dvfs_governor
   write /sys/devices/14ac0000.mali/dvfs_governor 1
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_clock
   write /sys/devices/14ac0000.mali/highspeed_clock 600
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_load
   write /sys/devices/14ac0000.mali/highspeed_load 80
   chmod 0664 /sys/devices/14ac0000.mali/highspeed_delay
   write /sys/devices/14ac0000.mali/highspeed_delay 0
   
   echo 806 718750 > /sys/devices/14ac0000.mali/volt_table ;
   echo 702 700000 > /sys/devices/14ac0000.mali/volt_table ;
   echo 650 675000 > /sys/devices/14ac0000.mali/volt_table ;
   echo 600 656250 > /sys/devices/14ac0000.mali/volt_table ;
   echo 546 637500 > /sys/devices/14ac0000.mali/volt_table ;
   echo 419 587500 > /sys/devices/14ac0000.mali/volt_table ;
   echo 338 575000 > /sys/devices/14ac0000.mali/volt_table ;
   echo 260 575000 > /sys/devices/14ac0000.mali/volt_table ;
   echo 112 575000 > /sys/devices/14ac0000.mali/volt_table ;

   # IO Scheduler
   write /sys/block/sda/queue/scheduler sio
   write /sys/block/sda/queue/read_ahead_kb 512
   write /sys/block/mmcblk0/queue/scheduler fiops
   write /sys/block/mmcblk0/queue/read_ahead_kb 1024
   write /sys/block/sda/queue/rq_affinity 1
   write /sys/block/mmcblk0/queue/rq_affinity 1
   write /sys/block/sda/queue/nr_requests 512
   write /sys/block/mmcblk0/queue/nr_requests 512

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
   write /proc/sys/net/ipv4/tcp_congestion_control westwood

   # SWAP
   write /proc/sys/vm/swappiness 150
   write /proc/sys/vm/vfs_cache_pressure 100

   # LMK
   write /sys/module/lowmemorykiller/parameters/minfree "27333,36444,45555,54666,63777,81999"

   # WiFi
   setprop wifi.supplicant_scan_interval 450



