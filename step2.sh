#!/bin/bash
echo "Tools:"
echo "1> How long the system has been on"
echo "2> Memory usage"
echo "3> Disk usage (system)"
echo "4> Disk usage (cwd)"
read -p "Selection: " num
case $num in
1)
	uptime -p;;
2)
	free -m;;
3)
	echo "Disk usage(system):"
	df -h;;
4)
	echo -n "Current working directory space usage:" 
	du -sh;;

esac

