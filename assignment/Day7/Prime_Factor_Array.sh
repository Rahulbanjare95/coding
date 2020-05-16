
#!/bin/bash -x

num=65



while [ $(($num % 2)) -eq  0 ]
do
num=$(($num / 2))
done


for (( i=3; i*i<=$num ; i++ ))
do
	if [ $(($num % $i)) -eq 0]
		then
			echo "$i "
			$num=$(($num / $i))
	fi
done
if [ $num -gt 2 ]
then
	echo "$num"
fi






