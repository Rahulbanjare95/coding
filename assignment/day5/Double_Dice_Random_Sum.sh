#!/bin/bash -x

	Dice1=$(( 1 + RANDOM%6 ))
	Dice2=$(( 1 + RANDOM%6 ))

	echo $Dice1 " on Dice1 and " $Dice2 " on Dice2"

	Sum=$(( $Dice1 + $Dice2 ))

	echo $Sum "Sum of both Dices"
