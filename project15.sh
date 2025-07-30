#!/bin/bash
echo
echo "=============== Auto Service Restarter ==============="
echo
read -p "Enter Service Name to Check:" servicename

if ! sudo systemctl list-unit-files --type=service | grep -q "$servicename" ; then
	echo "Service $servicename Not Found."
	exit 1
fi

result=$(sudo systemctl is-active "$servicename")

if [[ $result != active ]]; then
	echo "Service $servicename is InActive.Restarting $servicename"
	sudo systemctl restart "$servicename"
	echo
	
	
	result_after=$(sudo systemctl is-active $servicename)
	if [[ $result_after == active ]]; then
        echo "Service $servicename Restarted"
	fi

else
	echo "Service Runnning Fine."
fi

echo
echo "======================================================="
