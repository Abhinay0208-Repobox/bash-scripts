#!/bin/bash

#specify the directory path

directory="/dir1"

#check if the directory exists
if [ -d "$directory" ];then
	#if directory exists,proceed with file procesing
	echo "Directory $directory exists.Proceeding with file processing."

	#loop through each file in the directory
	for file in "$directory"/* ; do
		# check if it is a regular file
		if [ -f "$file" ] ; then
			echo "Processing file: '$file' "
			#add your file processing logic here

		fi

	done
else
	#if the directory does not exist,create it.
	echo "Directory $directory does not exist.Creating directory..."
	mkdir -p "$directory"     #creates the directory including parent directory
	echo "Directory $directory created."
fi
