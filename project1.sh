#!/bin/bash
echo "================================= SYSTEM HEALTH REPORT ==================================="
echo
echo "Date:$(date +%d-%m-%Y)                          Time:$(date +%T)"
echo
echo
echo "Disk Usage:"
df -h | grep /dev/sda1
df -h | grep /dev/sda1 | awk '{if ($5 > 60) print "Disk Usage Exceeds 60%"; else print "Disk Usage is in Normal Range"}'
echo
echo
echo "Memory Usage:"
free -m | grep Mem
echo
echo
echo "CPU Load:"
uptime | awk -F 'load average:' '{print $2}'
echo
echo "System Uptime"
uptime
echo
echo 
echo "Logged-in Users:"
who | awk '{print $1}'

echo "========================================================================================="
