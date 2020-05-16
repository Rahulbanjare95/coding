D#!/bin/bash

declare -A face_value

read -p "Enter how many times you want to roll a dice " rollDiceTimes
isRoll=0
#roll=$(( RANDOM%6+1 ))
FACE_ONE=1
FACE_TWO=2
FACE_THREE=3
FACE_FOUR=4
FACE_FIVE=5
FACE_SIX=6

i=0;
arr[i]=0

while [[ isRoll -lt rollDiceTimes ]]
do

	roll=$(( RANDOM%6+1 ))
	case $roll in
		$FACE_ONE)
			face="One"
			;;
		$FACE_TWO)
			face="Two"
			;;
		$FACE_THREE)
			face="Three"

			;;
		$FACE_FOUR)
			face="Four"
			;;
		$FACE_FIVE)
			face="Five"
			;;
		$FACE_SIX)
			face="Six"
			;;
		*)
			face="Unpredictable"
			;;
	esac

	done
	face_value[$face]=$roll
	arr[i++]=$roll
	echo $face
	echo ${arr[@]}
	isRoll=$(( $isRoll+1 ))
	done
	echo "${face_value[@]}"

