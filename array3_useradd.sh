#!/bin/bash

# Array of user names
user_names=("user1" "user2" "user3")

# Loop through the array and create users
for user in "${user_names[@]}"; do
    # Check if the user already exists
    if id "$user" &>/dev/null; then
        echo "User $user already exists."
    else
        # Create user with default settings
        sudo useradd -m "$user"
        echo "User $user created."
    fi
done
