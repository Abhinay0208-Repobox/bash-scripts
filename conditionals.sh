#!/bin/bash
#get user input for age

echo -n "Enter Your Age:"
read age

#Check of age is greater than or equal to 18
if [ "$age" -ge "18" ]; then
	
	echo "You Are An Adult."
else

	echo "You Are Minor."

fi


