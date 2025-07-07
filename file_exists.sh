#!/bin/bash

#Enter file path
filename="/abc.txt"

#loop to check if file exists or not
if [ -e "$filename" ]; then
	echo "File $filename exists."
else 
	echo "File $filename not exists."
fi

