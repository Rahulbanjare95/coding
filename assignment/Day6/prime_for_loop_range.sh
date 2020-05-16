#!/bin/bash

read -p "enter the 1st value in range " m
read -p "enter the 2nd value in range " n


count=0
for((i=m;i<=n;))
do
for((j=i-1;j>=2;))
do
if [  `expr $i % $j` -ne 0 ] ; then
count=1
else
count=0
break
fi
j=`expr $j - 1`
done
if [ $count -eq 1 ] ; then
echo $i
fi
i=`expr $i + 1`
done

