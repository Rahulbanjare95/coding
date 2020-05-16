#!/bin/bash -x

read -p "Enter the number you want to Check " p

half=$( $p / 2 )
flag=0


for (( i =2; i<half; i++))
do

#checking if i is factor of number
if test `expr $number % $i` -eq 0
then
flag=1
fi


done
if test $f -eq 1
then
echo "Not Prime"
else
echo "Prime"
fi
