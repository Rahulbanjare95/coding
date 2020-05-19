echo "Welcome to Employee Wage Computation Program"

#-------------------New Branch-----------------
echo "Attendence check"

	Present=1
	attendence_checker=$((RANDOM%2))
	if [ $Present -eq $attendence_checker ]
	then
		echo "Employee Is Present"
	else
		echo "Employee is Absent"
	fi

echo "Calculating Daily Wage"

	dailyWage=0
	if [ $Present -eq $attendence_checker ]
	then
		empRatePerHr=20
		empWorkHrs=8;
		dailyWage=$(( $empWorkHrs * $empRatePerHr ))
	else
		dailyWage=0
	fi
	echo "Daily Wage = "$dailyWage

#--------------------New Branch---------------------
echo "Adding Part Time Work Hours"

	isPartTime=1
	isFullTime=2
	empRatePerHr=20

	work_hrs_checker=$((RANDOM%3))
	if [ $isFullTime -eq $work_hrs_checker ]
	then
		empWorkHrs=8;
		echo "Full-Time"
	elif [ $isPartTime -eq $work_hrs_checker ]
	then
		empWorkHrs=4;
		echo "Part-Time"
	else
		empWorkHrs=0;
	fi
	salary=$(( $empWorkHrs * $empRatePerHr ))
	echo "Salary= " $salary

#----------------------New Branch-----------------------
echo "Using Switch Case to calculate "


	case $work_hrs_checker in
			$isFullTime)
						empWorkHrs=8
						;;
			$isPartTime)
						empWorkHrs=4
						;;
			*)
						empWorkHrs=0
	esac
	salary=$(($empWorkHrs * $empRatePerHr))
	echo "Using Case Statement " $salary

#----------------NewBranch---------------------------------

	numWorkingDays=20;
	TotalSalary=0

echo "Calculating For a Month"

	for (( day =1; day<=$numWorkingDays; day++ ))
	do
		case $work_hrs_checker in
				$isFullTime)
							empWorkHrs=8
							;;
				$isPartTime)
							empWorkHrs=4;
							;;
				*)
							empWorkHrs=0;
							;;
		esac
		salary=$(($empWorkHrs*$empRatePerHr))
		TotalSalary=$(($TotalSalary+$salary))
	done
	echo "Salay of month: " $TotalSalary
