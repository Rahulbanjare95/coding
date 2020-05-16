#!/bin/bash -x
	read -p "Enter a Number to Find Prime Factor " num

	cur=0;
	arr[curr]=0
	for (( i=2; i<=$num; i++ ));do
		while [ $(($num%$i)) == 0 ];
			do

				echo $i
				arr[curr++]=$i
				num=$(($num/$i))

			done

	done

