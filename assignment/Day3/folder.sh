#!/bin/bash -x

for file in `ls *.txt`
do
	folderName=`echo $file |awk -F. '{print $1}'`;
	if[ -d $folderName ]
		then
			printf "Folder Alreadt Exist";
	else 
			mkdir $folderName;
			cp $file $folderName;
fi
