#!/bin/bash -x

n=10
arr[0]=0
tempa=0
tempb=0

for (( i=0; i<=n; i++ ))
do
rnd=$(( $RANDOM%899+100 ))
arr[i]=$rnd
done
echo ${arr[@]};
#finding Second Largest
for (( j =0; j<=n; j++ ))
do
if [ ${arr[j]} -gt $tempa ]
then
	tempb=$tempa
	tempa=${arr[j]}
elif [ ${arr[j]} -gt $tempb -a ${arr[j]} -ne $tempa ]
then
	tempb=${arr[j]}
fi
done
#finding SecondSmallest
smalla=10000
smallb=10000
for (( k=0; k<=n; k++ ))
do
if [ ${arr[k]} -lt $smalla ]
then
	smallb=$smalla;
	smalla=${arr[k]}
elif [ ${arr[k]} -lt $smallb -a ${arr[k]} -ne $smalla ]
then
	smallb=${arr[k]};
fi
done
echo  "Second smallest" $smallb



echo "Second Greatest" $tempb
