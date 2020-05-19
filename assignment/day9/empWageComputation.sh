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

