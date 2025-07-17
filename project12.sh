#!/bin/bash
echo
echo "=============== System Info Snapshot ==============="
echo
echo "Hostname of the system: $(hostname) "
echo 
echo "Uptime : $(uptime -p)"
echo
osname=$(cat /etc/os-release | awk 'NR == 1')
osversion=$( cat /etc/os-release | awk 'NR == 2')
echo "OS_$osname   OS_$osversion"           
echo
#first way to trim lines using awk
modelname=$(grep "model name" /proc/cpuinfo | head -1 | awk -F: '{print $2}')

#second way to trim lines using cut
cpucores=$(grep "cpu cores" /proc/cpuinfo | head -1 | cut -d ':' -f2)

echo "CPU Model:$modelname"
echo "Total CPU Cores: $cpucores"
echo
memory=$(free -h | awk '/Mem/ {print "Total: "$2,  "|Used: "$3,  "|Free: "$4}')
echo "Memory Info: "
echo "$memory"
echo
diskusage=$(df -hT | grep '^/dev/' | column -t)
echo "Disk_Usage:"
echo "$diskusage"
echo
echo "======================================================="
