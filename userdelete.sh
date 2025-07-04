#!/bin/bash

#prompt user for username to delete

read -p "Enter the Username to delete:" username

#check if the username exists before delete

if id "$username" &>/dev/null; then
	sudo userdel -r $username
	echo "User $username deleted."
else
	echo "User $username not exists"
fi

