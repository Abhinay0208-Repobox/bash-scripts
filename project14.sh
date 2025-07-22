#!/bin/bash

echo
echo "================== Disk Usage Alert =================="

read -p "Enter usage limit (%): " limit


echo
echo "Checking disk usage on all partitions..."

# Use df to check all mounted partitions, exclude tmpfs and similar
df -h | grep  '^/dev/' | while read -r  line; do
    # Extract usage percentage and mount point
    usage=$(echo "$line" | awk '{ print $5 }' | tr -d '%')
    mount_point=$(echo "$line" | awk '{ print $6 }')


    if [[ "$usage" -gt "$limit" ]]; then
        echo "WARNING: $mount_point is $usage% full!"
    else
        echo "OK: $mount_point is $usage% full."
    fi
done

echo
echo "====================================================="

