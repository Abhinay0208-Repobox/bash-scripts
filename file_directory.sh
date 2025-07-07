#!/bin/bash

# Function to create a directory and a file inside it, and manage permissions
create_directory_and_file() {
    local directory_name="$1"
    local file_name="$2"

    # Create the directory
    mkdir -p "$directory_name"

    # Create a file inside the directory
    touch "$directory_name/$file_name"

    # Set permissions for the directory (readable, writable, executable by owner)
    chmod 700 "$directory_name"

    # Set permissions for the file (readable, writable by owner; readable by others)
    chmod 644 "$directory_name/$file_name"

    echo "Directory '$directory_name' and file '$file_name' created successfully."
}

# Call the function with directory name and file name arguments
create_directory_and_file "my_directory" "my_file.txt"

