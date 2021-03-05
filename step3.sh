#!/bin/bash
if [ "$#" == "0" ]
then
	echo "You have to give at least 1 parameter."
	exit 1
fi

num=1
for ((number = 1; number < $1; number++))
do
	num=$[ $num + ($number + 1) ];
done
echo "sum of number from 1 through $1 is $num."
