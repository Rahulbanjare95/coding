#!/bin/bash

n=10
arr[0]=0
temp=0

for (( m=0; m<n; m++ ))
do
rnd=$(( $RANDOM%899+100 ))
arr[m]=$rnd
done
echo ${arr[@]};
#Sorting

for ((i = 0; i<10; i++))
do

    for((j = 0; j<10-i-1; j++))
    do

        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then

            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done
echo "Array " ${arr[@]}
echo "Second Min " ${arr[1]}
echo "Second Max " ${arr[8]}

