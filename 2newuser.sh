#!/bin/bash

# Number of users to create
read -p "Enter the number of users to create: " num_users

# Loop to create users
for ((i=1; i<=$num_users; i++)); do
    # Prompt for user information
    read -p "Enter username for user $i: " username
    read -p "Enter full name for user $i: " full_name
    read -s -p "Enter password for user $i: " password
    echo    # Move to the next line after password input

    # Create the user with the provided information
    useradd -m -c "$full_name" -s /bin/bash "$username"

    # Set the password for the user
    echo "$username:$password" | chpasswd

    echo "User $username created successfully."
done

echo "User creation process completed."
