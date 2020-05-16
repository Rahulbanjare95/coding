#!/bin/bash -x
read -p "check year :" year
if [ $((year %400)) -eq 0 & $((year %100)) -ne 0 & $((year %4)) -eq 
0]
then 
	echo $year is Leap year;
else
	echo $year is not leap year;

fi
