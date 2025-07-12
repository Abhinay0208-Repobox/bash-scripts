#!/bin/bash
echo
echo "=============== Process Monitor Script ==============="
echo
read -p "Enter Process Name:" process
echo

ps aux | awk 'NR==1 {print $1, $2, $3, $4, $11 }'
echo
ps aux | grep -i "$process" | awk '{print $1, $2, $3, $4, $11 }'
echo
read -p "Do You Want To Kill Process (Y/N):" choice

if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
	echo
	read -p  "Enter Process ID To Kill: " num
	kill "$num"
	echo "Process Killed."

else
        echo "Exiting Without Killing Process."
        
fi
echo "==================== Script  End ===================="
