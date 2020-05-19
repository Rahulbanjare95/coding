echo "Welcome to Employee Wage Computation Program"

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
