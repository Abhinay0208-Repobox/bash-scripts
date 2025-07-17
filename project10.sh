#!/bin/bash
echo
echo "=============== Cron Job Viewer ==============="
echo
echo "1. View Your (Current User) Jobs."
echo "2. View system-wide cron jobs."
echo "3. Exit."
echo
read -p "Enter Your Choice:" choice
echo
case "$choice" in
	1)
		echo "Your Cron Jobs:"
		crontab -l
		;;
	2)
		cat /etc/crontab
		;;
	3)
		echo "Exiting..."
		;;
	*)
		echo "Wrong Choice."
		;;
esac
echo "================================================"
