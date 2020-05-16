1
#!/bin/bash-x

read -p "Enter a number " x

case $x in
		1)
			echo "Unit"
			;;
		10)
			echo "Ten"
			;;
		100)
			echo "Hundered"
			;;
		1000)
			echo "Thousand"
			;;
		10000)
			echo "Ten Thousand"
			;;
		100000)
			echo "Lakh"
			;;
		1000000)
			echo "Ten Lakh"
			;;

		*)
			echo "Invalid"
			;;
esac

