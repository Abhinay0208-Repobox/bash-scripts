#!/bin/bash

echo
echo "=============== Basic Port Scanner ==============="
echo

read -p "Enter Hostname/IP to scan: " name

if [[ -z $name ]]; then
    echo "Hostname cannot be empty. Try again."
    exit 1
fi

echo
read -p "Enter Port number to check (1 to 65535): " port

if [[ -z $port ]]; then
    echo "Port number cannot be empty. Try again."
    exit 1
elif ! [[ $port -ge 1 && $port -le 65535 ]]; then
    echo "Enter valid port number."
    exit 1
fi

echo
echo "Scanning.....$name on port $port "
echo

if nc -zv "$name" "$port" > /dev/null 2>&1; then
    echo "Success: $name:$port is OPEN"
else
    echo " Failed: $name:$port is CLOSED or unreachable"
fi

echo
echo "=============== Scan Complete ==================="

