#!/bin/bash

while true; do
    echo
    echo "========== Login History Tracker =========="
    echo
    echo "1. Show all recent logins"
    echo "2. Filter by username"
    echo "3. Show currently logged-in users"
    echo "4. Exit"
    echo

    read -p "Enter Your Choice: " option
    echo

    case "$option" in
        1)
            echo "Recent Logins:"
            last -n 10
            ;;
        2)
            read -p "Enter Username: " name
            echo
            echo "Login History for: $name"
            last "$name"
            ;;
        3)
            echo "Currently Logged-in Users:"
            who
            ;;
        4)
            echo "Exiting script..."
            echo "==================== END ===================="
            break
            ;;
        *)
            echo "Invalid Option. Please enter 1 to 4."
            ;;
    esac

    echo
    read -p "Press Enter to continue..."
    clear
done
