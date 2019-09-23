#!/system/bin/sh
# SPECTRUM KERNEL MANAGER
# Profile initialization script by nathanchance

# If there is not a persist value, we need to set one
if [ ! grep -q persist.spectrum.profile /data/property/persistent.properties ]; then
    setprop persist.spectrum.profile 0
fi
