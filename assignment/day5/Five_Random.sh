#!/bin/bash -x

n=5;


Average=0
sum=0
for((i=1;i<=5;i++))
do
rand=$(( RANDOM%10 +10 ))
sum=$((sum + rand))

done
Average=$((sum/n))

echo "Sum = " $sum "Average= " $Average




