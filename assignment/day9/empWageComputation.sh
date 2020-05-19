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


#-------------New Branch------------------------------------------
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
	do
   	((totalWorkingDays++))
   	empCheck=$((RANDOM%3));
		case $empCheck in
			$IS_FULL_TIME)
				empHrs=8
				;;
			$IS_PART_TIME)
				empHrs=4
				;;
			*)
				empHrs=0

				;;
		esac
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	done
	totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))
	echo $totalSalary
#--------------------NewBranch--------------------------------------

function getWorkHrs() {
   case $1 in
      $IS_FULL_TIME)
         empHrs=8
         ;;
      $IS_PART_TIME)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac
   echo $empHrs;
}

function getEmpWage() {
   echo $(($1*$EMP_RATE_PER_HR));
}

#----------------New Branch---------------
echo "Storing Daily Wages"
IS_PART_TIME=1;
IS_FULL_TIME=2;
MAX_HRS_IN_MONTH=4;
EMP_RATE_PER_HR=20;
NUM_WORKING_DAYS=20;

totalEmpHr=0;
totalWorkingDays=0;

declare -A dailyWages
function getWorkHrs() {

   case $1 in
      $IS_FULL_TIME)
         empHrs=8
         ;;
      $IS_PART_TIME)
         empHrs=4
         ;;
      *)
         empHrs=0
         ;;
   esac
   echo $empHrs;
}

function getEmpWage() {
   echo $(($1*$EMP_RATE_PER_HR));
}

while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));
   empHrs="$(getWorkHrs $empCheck)"
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
   dailyWages[$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))

echo ${dailyWages[@]}

#-------------------------------New Branch-----------------------
while [[ $totalEmpHrs -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
do
   ((totalWorkingDays++))
   empCheck=$((RANDOM%3));
   empHrs="$(getWorkHrs $empCheck)"
   totalEmpHrs=$(($totalEmpHrs+$empHrs))
   dailyWages["Day "$totalWorkingDays]="$( getEmpWage $empHrs )"
done

totalSalary=$(($totalEmpHrs*$EMP_RATE_PER_HR))

echo ${!dailyWages[@]}
echo ${dailyWages[@]}







