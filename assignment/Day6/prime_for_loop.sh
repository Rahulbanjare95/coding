#!/bin/bash -x

read -p "Enter a number to check for prime:  " no
n=$(($no-1))

flag=0

for (( i=2; i<=$n; i++ ))
do
	if [ $(($no % $i)) -eq 0 ]
	then
		flag=$(($flag+1))
	fi
done

if [ $flag -eq 0 ]
then
	echo $no " is Prime"
else
	echo $no " is NOT prime"
fi
