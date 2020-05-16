#!/bin/bash -x

	echo " Lets Generate Table of 2^n  i.e 2 4 8 "

	read -p "Enter the value of n in 2^n = " n

	num=$(( 2**$n ))
	m=0
	i=1

	while [ $m != 256 ]
	do
		i=$(($i+1))
		m=$(( $num * $i ))
		echo $num X $i = $m
	done



