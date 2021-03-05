#!/bin/bash
find . -size +1M | while read line;
do
	echo "Found file: $line "
	echo -n "(D)elete, (C)ompress, or (S)kip: "
	sleep 0.5
	read input </dev/tty
	case $input in
	D)
		rm -rf $line && echo "Deleted: '$line' at $(date)" >> logFile.txt 		 echo "Deleting $line"
		echo;;
	C)	
		gzip $line
		echo "Compress $line"
		echo;;
	S)
		echo "Skipping $line"
		echo;;

	*)	
		echo "Invalid input"
		exit;;
	esac
done
