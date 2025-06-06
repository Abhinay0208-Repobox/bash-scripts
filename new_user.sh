#!/bin/bash
#My First Bash Code
#Bash Code to Create New User and New Group
var1="Harry"
var2="Hogwarts"
useradd -u 1041 "$var1"
groupadd "$var2"

#Now Add New User Into New Group
usermod -aG "$var2" "$var1"

#Display New User Details
echo "New User Are:"  
cat /etc/passwd | grep "$var1"

#Id of New User Are
echo "ID of New User Are:"
id "$var1"

#Display Secondary Group
echo "Secondary Group Are:" 
groups "$var1"

echo $var1 added to $var2
