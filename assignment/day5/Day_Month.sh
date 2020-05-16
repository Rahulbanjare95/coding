#!/bin/bash -x


	read -p "Enter the Date : " date
	read -p "Enter the Month :" month

	if(( ($month==9) & ($date<=20) ))
	then echo $date $month "True"  ;

	elif((($month >= 3 & $month<9) & ($date<31)))
	then echo $date $month "True";

	else
		echo "False"
fi
