#!/bin/bash

nu=11

for (( i=1; i<10; i++ ))
do
	nu=$((11*$i))
	arr[i]=$nu
done
echo ${arr[@]}
