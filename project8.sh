#!/bin/bash
echo
echo "========== Top 5 Largest Files Finder =========="
echo
read -p "Enter Directory Path: " path

if [ ! -d "$path" ]; then
	echo "Entered Path Does Not Exist!.Try Again."
	exit 1
fi

echo
echo "Top 5 Largest Files in "$path":"
echo

du -ah "$path" | sort -rh | head -n 5

echo
echo "================================================"
