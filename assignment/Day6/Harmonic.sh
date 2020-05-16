#!/bin/bash -x

	read -p " Enter the value of n : " x
	echo " It will give the HP at nth position"
	num=$x;
	h=0;
	if [ $x -eq 1]
		then
			$h=1
			echo $h
	else
		for (( i =2 ; i<=n; i++ ))
		do
		h+=$(h( 1 / i ));
		done
	fi
	echo $h;

