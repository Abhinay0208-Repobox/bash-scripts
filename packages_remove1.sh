#!/bin/bash

# This script removes packages listed in a file (packages.txt)

# Set the filename containing the list of packages
package_file="packages.txt"

#packages.txt is a file that contains list of files to remove and this file should be available in advance in the same directory.


#check if the file exists
if [ -f "$package_file" ]; then

	#read the file line by line
	while read package; do

		#skip empty lines 
		if [ -n "$package" ]; then
			echo "Removine the package: $package"
                        
			## Use yum to remove the package (you may need to enter your password)
			sudo yum remove -y "$package"
		fi

	done < "$package_file"

else
	# # If the file does not exist, show an error message # If the file does not exist, show an error message
	echo "Error:File not found $package_file"
fi

