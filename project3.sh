#!/bin/bash

echo "======================= File Backup Script =========================="

read -p "Enter Folder Path For Backup:" path

echo
if [ -d "$path" ]; then
	echo "Entered Path: $path Exists, Creating Backup....."

	backup="/home/master/backups/$(basename $path)_$(date +%d%m%y_%H%M%S).tar.gz"
        
	tar -czf "$backup" "$path"

	echo 
	echo "Backup Successful!!! File Saved As: $backup"

else
	echo
	echo "Entered Path: $path Not Found"

fi 
echo "====================== Task Complete ==============================="
