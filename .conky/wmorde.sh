#!/bin/bash

WM=`alsi | grep "Window Manager" | sed -e 's/^.*\:.... //g'`
DE=`alsi | grep "Desktop Environment" | sed -e 's/^.*\:.... //g'`

if [ "$DE" = "" ]; then
	if [ "$#" = 0 ]; then
		echo $WM
	else
		echo "Window Manager"
	fi
else
	if [ "$#" = 0 ]; then
		echo $DE
	else
		echo "Desktop Environment"
	fi
fi

