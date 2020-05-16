
read -p "Enter a number to check " n
read -p "Enter second num" sn
#to store reverse
rev=0
#to store remainder
rem=0

function palindrome_check() {
	while [ $n -gt 0 ]
		do
			rem=$(( $n % 10 ))


			n=$(( $n / 10 ))

			rev=$( echo ${rev}${rem} )
		done
}
result=$( plaindrome_check($n) )
	if [ $sn -eq $result ];
	then
		echo "is Palindrome"
	else
		echo "Not palindrome"
	fi
