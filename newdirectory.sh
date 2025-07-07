#!/bin/bash
# Define the base directory where directories will be created
base_dir="/directorybox"

# Check if the base directory exists, if not, create it
if [ ! -d "$base_dir" ]; then
    mkdir -p "$base_dir"
fi

# Prompt the user for the number of directories to create
echo -n "Enter the number of directories to create: "
read num_directories

# Loop to create directories
for (( i = 1; i <= num_directories; i++ )); do
    # Create the directory with a unique name
    dir_name="$base_dir/directory_$i"
    mkdir "$dir_name"
    echo "Created directory: $dir_name"
done

echo "Directories creation completed."
