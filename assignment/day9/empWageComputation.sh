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
