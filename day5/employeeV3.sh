#!/bin/bash -x

# using Case in shell to solve employeeWage

isPartTime=1;
isFullTime=2;
empRatePerHr=20;
attendenceCheck=$((RANDOM%3));
case $attendenceCheck in 
			$isFullTime)
						empHrs=8;
						;;
			$isPartTime)
						empHrs=4;
						;;
			*)
			empHrs=0
						;;

esac

salary=$(($empHrs*$empRatePerHr));


