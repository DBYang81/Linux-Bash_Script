#!/bin/bash
clear
currenthour=$(date +%H)
if [ $currenthour -lt 12 ]
then
	echo "Good Morning $LOGNAME."
elif [ $currenthour -lt 16 ]
then
	echo "Good Afternoon $LOGNAME."
else
	echo "Good Evening $LOGNAME."
fi
date
