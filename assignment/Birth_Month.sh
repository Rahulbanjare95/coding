#!/bin/bash

declare -A Calculate_Month
num=50;

January=1
February=2
March=3
April=4
May=5
June=6
July=7
August=8
September=9
October=10
November=11;
December=12;

n=0 #to start from 1st individual
declare -A arr
counter=0
month_arr[0]=0
v_i=0
visited[v_i]=$false
while [[ $n -le $num ]]

	do
		rnd=$(( RANDOM%12+1 ))
		case $rnd in
			$January)
				month="JANUARY"
				;;

         $February)
            month="FEBRUARY"
            ;;

         $March)
            month="MARCH"
            ;;
         $April)
            month="APRIL"
            ;;
         $May)
            month="MAY"
            ;;

         $June)
            month="JUNE"
            ;;

         $July)
            month="JULY"
            ;;

         $August)
            month="August"
            ;;

         $September)
            month="SEPTEMBER"
            ;;
         $October)
            month="OCTOBER"
            ;;
         $November)
            month="NOVEMBER"
            ;;
         $December)
            month="DECEMBER"
            ;;
			*)
				month="No available"
				;;
		esac
		arr[$n]="$month"
		n=$(( $n+1 ))
		month_arr[counter++]=$month
		visited[counter++]=false
	done

	echo ${!arr[@]}
	echo ${arr[@]}

