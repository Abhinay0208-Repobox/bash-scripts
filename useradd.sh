#!/bin/bash

#Bash Script to Create User and Group.
#Assign New Group to User and also Create Password for User.

read -p "Enter New User Name: " user
useradd $user

echo "Change Password For User $user"
passwd $user

read -p "Enter New Group Name:" group
groupadd $group

echo "New Group $group Created."

usermod -G $group $user
echo "$user successfully added to $group"

list= cat /etc/passwd | grep $user
echo $list

