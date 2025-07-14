#!/bin/bash

echo "=============== Log Monitor Script ==============="
echo
read -p "Enter The Full File Path: " filepath

if [ ! -f "$filepath" ]; then
	echo "File Not Found...Exiting."
	exit 1
fi
echo
echo "Searching For Keywords: WARNING ERROR FAIL"

grep -iE 'warning|error|fail' "$filepath" | while read -r line; do

if [[ "$line" == *[Ww][Aa][Rr][Nn][Ii][Nn][Gg]* ]]; then
	echo "WARNING: $line"

elif [[ "${line,,}" == *error* ]]; then
	echo "ERROR: $line"

elif [[ "${line,,}" == *fail* ]]; then
	echo "FAIL: $line"

fi
done
echo
echo "================================================="

