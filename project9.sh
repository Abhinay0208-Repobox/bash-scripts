#!/bin/bash
echo
echo "=============== Service Uptime Checker ==============="
echo

read -p "Enter Service Name: " service
echo 
sudo systemctl is-active "$service" > /dev/null

if [ $? == 0 ]; then
	echo "Service $service is running."
else
	echo "Service $service is Not running.Please check the  service."
	echo
fi
echo

echo "System Uptime Is: $( uptime -p )"
echo
echo "======================================================="

