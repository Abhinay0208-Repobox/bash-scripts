#!/bin/bash

#specify the directory path 

directory="/dir1"

#check if the directory exists
if [ -d "$directory" ];then 
	#loop through each file in the directory
	for file in "$directory"/*;  do
        #check if the current item is a file
	if [ -f "$file" ];then
		#print the name of the file
		cp -rvf "$file" /tmp/

		#add your custom actions here
	fi
done
else
	echo "Directory not found: $directory"
fi

