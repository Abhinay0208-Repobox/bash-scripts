#!/bin/bash
echo
echo "========== Login History Tracker =========="
echo
echo "1. Show all recent login."
echo "2. Filter by username."
echo "3. Show currently logged in users."
echo "4. Exit"
echo
read -p "Enter Your Choice: " option
echo

if [[ "$option" == "1" ]]; then
	echo "Recent Login"
	last -n 10
elif [[ "$option" == "2" ]]; then
	echo
	read -p "Enter Username: " name
	last -n 10 "$name"

elif [[ "$option" == "3" ]]; then
	echo "Currently Logged in Users:"
	who
elif [[ "$option" == "4" ]]; then
        echo
	echo "Exiting"
else
	echo
	echo "Wrong Option,Select Only 1 2 3 4"
fi
echo
echo "=============== SCRIPT END ==============="
