#!/bin/bash

# Prompt the user for the file name
echo "Enter the file name:"
read filename

# Check if the file exists
if [ ! -e "$filename" ]; then
    echo "File '$filename' does not exist."
    exit 1
fi

# Display current permissions of the file
echo "Current permissions of '$filename':"
ls -l "$filename"

# Prompt the user for permission level
echo "Select permission level:"
echo "1. Read-only"
echo "2. Write-only"
echo "3. Read and write"
echo "4. Execute"
read choice

# Assign permissions based on user's choice
case $choice in
    1)
        chmod u=r,go=r "$filename"  # Read-only for user, group, and others
        echo "Read-only permission assigned to '$filename'."
        ;;
    2)
        chmod u=w,go=w "$filename"  # Write-only for user, group, and others
        echo "Write-only permission assigned to '$filename'."
        ;;
    3)
        chmod u=rw,go=rw "$filename"  # Read and write for user, group, and others
        echo "Read and write permission assigned to '$filename'."
        ;;
    4)
        chmod u=x "$filename"  # Execute permission for user
        echo "Execute permission assigned to '$filename'."
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 4."
        exit 1
        ;;
esac

# Display updated permissions of the file
echo "Updated permissions of '$filename':"
ls -l "$filename"
