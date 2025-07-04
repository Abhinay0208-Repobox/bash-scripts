#!/bin/bash

while true; do
	read -p "Enter the username to delete (or exit to quit): " username

	#check if user wnats to exit
	if [ "$username" == "exit" ]; then
		echo "Exiting the script"
		break
	fi


	#check if the username exists
	if id "$username" &>/dev/null; then
		sudo userdel -r "$username"
		echo "User $username has been deleted"
	else
		echo "User $username does not exists"
	fi
done


