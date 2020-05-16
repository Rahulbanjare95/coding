
read -p "Enter Year: " year


if [ $[$year % 400] -eq 0 ]; then
  echo "Yes leap year."
elif [ $[$year % 4] -eq 0 ]; then
        if [ $[$year % 100] -ne 0 ]; then
          echo "Yes leap year, "
        else
          echo "NOT leap year. "
        fi
else
  echo "NOT leap year"
fi
