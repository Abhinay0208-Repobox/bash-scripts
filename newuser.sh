#!/bin/bash

#specify the base username

base_username="user"

#specify the number of users to create
num_users=5

#loop to create users
for((i=1; i<=$num_users; i++)); do
	username="${base_username}${i}"

	#check if the user already exist
	if id "$username" &>/dev/null; then
		echo "Username $username already exists.skipping"
	else
		#create the user
		useradd -m "$username"
		echo "Username $username created"
	fi
done
echo "User creation process completed"
