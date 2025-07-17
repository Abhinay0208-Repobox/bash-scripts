#!/bin/bash
echo
echo "=============== Internet Connectivity Checker ==============="
echo

read -p "Enter Hostname to Ping: " host
echo

# Check if hostname is resolvable
if ! host "$host" &> /dev/null; then
    echo "❌ Hostname '$host' could not be resolved. Please check the spelling or try another."
    echo
    echo "============================================================"
    exit 1
fi

# Ping test
ping -c 1 "$host" > /dev/null

if [ $? -eq 0 ]; then
    echo "✅ Connection to Hostname '$host' is successful."
else
    echo "❌ Hostname '$host' not reachable. Check your network or the hostname."
fi

echo
echo "============================================================"

