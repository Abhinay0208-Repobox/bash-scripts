#!/bin/bash

echo "=========================User Management Script========================="

read -p "Enter Username:" username

if id "$username"  &>/dev/null; then
       echo "Username $username exists."
       echo 
       echo "Do You Want To Delete This User (y/n) ? :"
       read option
       if [[ "$option" == "y" || "$option" == "Y" ]]; then
	       sudo userdel -r "$username"
	       echo
	       echo "Username $username Deleted"
       else
	       echo 
	       echo "No Action Taken."
       fi
else
	echo "Username $username does not exist."
        echo
	echo "Adding New User $username."
	sudo useradd -m "$username"
	echo
	echo "Enter Password For $username: "
	sudo passwd "$username"

fi
echo
echo "================================================================="

