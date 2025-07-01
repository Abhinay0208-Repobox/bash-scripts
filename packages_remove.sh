#!/bin/bash

# Specify the file containing package names
package_file="packages.txt"    

#packages.txt is a file that contains list of files to remove and this file should be available in advance in the same directory.

# Check if the package file exists
if [ -f "$package_file" ]; then
  # Loop through each line in the package file
  while IFS= read -r package || [[ -n "$package" ]]; do
    # Install the package using the package manager (replace 'apt-get' with your package manager)
    echo "Removing the $package..."
    sudo yum remove -y "$package"
    
    # Add any additional custom actions here if needed
    
  done < "$package_file"
else
  echo "Package file $package_file not found."
fi

