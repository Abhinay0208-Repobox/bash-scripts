#!/bin/bash

# File containing a list of usernames to delete, one per line
user_list_file="user_list.txt"

# Check if the user list file exists
if [ -f "$user_list_file" ]; then
  # Read the usernames from the file and loop through them
  while IFS= read -r username; do
    # Check if the username is not empty
    if [ -n "$username" ]; then
      # Check if the user exists before attempting deletion
      if id "$username" &>/dev/null; then
        # Delete the user
        sudo userdel "$username"
        echo "User '$username' deleted."
      else
        echo "User '$username' does not exist."
      fi
    fi
  done < "$user_list_file"
else
  echo "User list file not found: $user_list_file"
fi
