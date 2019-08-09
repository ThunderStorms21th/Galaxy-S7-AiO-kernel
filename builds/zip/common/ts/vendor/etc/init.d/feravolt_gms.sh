#!/system/bin/sh
### FeraVolt. 2019 ###
RIL=$(getprop rild.libargs|cut -d " " -f 2);
if [ -z "$RIL" ]; then 
	if [ -e /dev/smd0 ]; then RIL="/dev/smd0";
	elif [ -e /dev/smd8 ]; then RIL="/dev/smd8";
	elif [ -e /dev/smd11 ]; then RIL="/dev/smd11";
	elif [ -e /dev/radio/atci1 ]; then RIL="/dev/radio/atci1";
	else exit;
	fi
fi
if [ -n "$RIL" ]; then
	if [ -e /cache/2g_please ]; then PWRGSM="1";
	else PWRGSM="2";
	fi
	getscreen(){ GETSCR=$(dumpsys power|grep state=O|cut -d "=" -f 2);};gsm(){ echo -e "$1">$RIL;};scrondid="0";scroffdid="0";
	
	while true;
		do getscreen;
		if [ "$GETSCR" = "ON" ]; then scroffdid="0";if [ "$scrondid" -eq "0" ];then gsm "AT^SYSCONFIG=2,2,1,2\r";scrondid="1";
		fi
	sleep 9;
	else scrondid="0";
	if [ "$scroffdid" -eq "0" ]; then scroffdid="1";
		if [ "$PWRGSM" -eq "1" ]; then gsm "AT^SYSCONFIG=13,2,1,2\r";
		elif [ "$PWRGSM" -eq "2" ]; then gsm "AT^SYSCONFIG=14,2,1,2\r";
		fi
	fi
fi
sleep 9;
done;
else exit;
fi
