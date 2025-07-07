#!/bin/bash

# Declare an array
my_array=(10 20 30)

# Print array elements
echo "Array elements:"
for element in "${my_array[@]}"; do
    echo $element
done

# Add elements to the array
my_array+=(40 50)

# Print updated array
echo "Updated array:"
for element in "${my_array[@]}"; do
    echo $element
done

# Print array length
echo "Array length: ${#my_array[@]}"
