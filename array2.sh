#!/bin/bash

#Declare an array
my_array=(10 20 30)


#Print Array Elements
echo "Array Elements"
for element in "${my_array[@]}"; do
	echo "$element"
done

#Unset Variable
unset my_array[2] 

#Add elements to the Array
my_array+=(40 50)

#Print Updated Array
echo "Updated Array:"

for element in "${my_array[@]}"; do
	echo "$element"
done

#Print Array Length
echo "Array Length:${#my_array[@]}"

