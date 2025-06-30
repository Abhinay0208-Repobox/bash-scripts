#!/bin/bash

# Specify the directory path
directory="/dir1"

# Check if the directory exists
if [ -d "$directory" ]; then
  # Loop through each file in the directory
  for file in "$directory"/*; do
    # Check if the current item is a file
    if [ -f "$file" ]; then
      # Print the name of the file
      echo "Processing file: $file"

      # Add your custom actions here, e.g., process the file, copy, move, etc.

    fi
  done
else
  echo "Directory not found: $directory"
fi
