#!/bin/bash

#prompt for the username

read -p "Enter the Username to Check:"  username

#check if the user exists
if id "$username" &>/dev/null; then
	echo "User $username exists"

	#asks if user wants to delete username
	read -p "Do you wants to delete username (y/n)..." confirm
	if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
		sudo userdel -r "$username"
		echo "User $username has been deleted."
	else
		echo "User deletion cancelled."
	fi
else 
	echo "User $username does not exist."
fi


		
