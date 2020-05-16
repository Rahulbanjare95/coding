#!/bin/bash -x

isPresent=1;
attendenceCheck=$((RANDOM%2));
if [ $isPresent -eq $attendenceCheck ];
then
		empRatePerHr=20;
		empHrs=8;
		salary=$(($empHrs*$empRatePerHr));
else
	salary =0;

fi

