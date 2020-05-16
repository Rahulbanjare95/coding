#!/bin/bash -x


	read -p "Enter first Number" num1
	read -p "Enter Second Number" num2
	read -p "Enter Third Number" num3
	echo "Operation :- a + b * c "

	solution1=$(( $num1 + ($num2 * $num3) ))
	echo $solution1
	echo "Operation :- a % b + c"

	solution2=$(( ($num1 % $num2) + $num3 ))
	echo $solution2
	echo "Opertion :- c + a / b "
	solution3=$(( $num3 + $num1 / $num2 ))
	echo $solution3
	echo "Operation :-a * b + c "
	solution4=$(( $num1 * $num2 + $num3 ))
	echo $solution4
	arr[0]=$solution1
	arr[1]=$solution2
	arr[2]=$solution3
	arr[3]=$solution4

	#USING BUBBLE SORT
	for ((i = 0; i<4; i++))
	do
    	for((j = 0; j<4-i-1; j++))
    	do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
		#SWAPPING
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    	done
	done
	echo ${arr[*]}
	echo " Min:" ${arr[0]}
	echo " Max:" ${arr[3]}
