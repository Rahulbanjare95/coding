#!/bin/bash


	index=0

while [ $index != 5 ]
do

x=$(( 100 + RANDOM%100 ))
inputarray[ $index ]=$x
(( index++ ))
done
echo ${inputarray[*]}

curr_Max=${inputarray[0]}
curr_Min=${inputarray[0]}

for i in "${inputarray[@]}"
do
	if [[ $i -gt $curr_max ]]
	then
		curr_Max=$i;
	fi
	if [[ $curr_Max -lt $curr_Min ]]
	then
		curr_Min=$curr_Max;
	fi

done
echo $curr_Max
echo $curr_Min
