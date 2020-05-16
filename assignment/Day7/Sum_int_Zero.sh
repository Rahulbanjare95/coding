#!/bin/bash -x

n=3;


echo "enter Choices : "
for (( i=0; i<n; i++ ))
do
read -p "Enter  Number = " x
arr[i]=$x

done
echo ${arr[@]}

sum=0

for (( j=0; j<n; j++ ))
do
    sum=`expr $sum + ${arr[j]}`
done

if [ $sum -eq 0 ]
then
	echo "Sum is Zero"
else
	echo "Sum = $sum is not equal to Zero "
fi
