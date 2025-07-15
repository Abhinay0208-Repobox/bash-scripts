#!/bin/bash

echo "========== System Update & Package Checker =========="
echo
echo " Date:  $(date)"

if  ! command -v yum &> /dev/null; then
    echo "This script is only for YUM-based systems RHEL/CentOS."
    exit 1
fi

echo "Performing Update Check............"
echo
sudo yum check-update
echo
echo "Recent Installed Package..........."
echo
rpm -qa --last | head -n 10
echo
echo "====================================================="

