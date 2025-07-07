#!/bin/bash

#Array of Usernames
user_name=("user1" "user2" "user3" "user4") 

#Loop through the array and crete users
for user in "${user_name[@]}"; do
	if id "$user" &>/dev/null; then
		sudo userdel -r "$user"
	        echo "User $user Deleted"
	
	else
		sudo useradd -m "$user"
		echo "User $user Created"
		fi
	done

