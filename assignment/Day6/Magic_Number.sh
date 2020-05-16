#!/bin/bash -x


num=47;
top=100;
low=0;
mid=50
while [ $low -le $top ]
	do
		if [ $num -eq $mid ]
		then
			echo "Number is $num"
			break;
		elif [ $mid -lt $num ]
		thenx
			low =$(($mid+1))
		else
			top=$(($mid-1))
		fi
	mid=$low + $top / 2

	done
