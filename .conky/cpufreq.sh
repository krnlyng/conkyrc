#!/bin/bash

if [ "$2" = "max" ]; then
	MAX=`cat /sys/devices/system/cpu/cpu$1/cpufreq/scaling_max_freq`
	let MAX=$MAX/1000
	echo $MAX
else
	CUR=`cat /sys/devices/system/cpu/cpu$1/cpufreq/scaling_cur_freq`
	let CUR=$CUR/1000
	echo $CUR
fi

