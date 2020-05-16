#!/bin/bash -x
echo " Generating Result: "

	rnd=$((RANDOM%2))
	if [ $rnd -eq 0 ]
		then
			echo "Tails"
	else
		echo "Head"
	fi

