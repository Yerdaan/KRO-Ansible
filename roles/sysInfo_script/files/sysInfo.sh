#!/bin/bash

CPU_USAGE=$(grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}')
MEMORY_USAGE=$(free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }')
DISK_USAGE=$(df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}')
NOW=$(date)

echo -e "######################################################
Machine state on $NOW
CPU usage: $CPU_USAGE
Memory usage: $MEMORY_USAGE
Disk usage: $DISK_USAGE
" >> machine_stats.log

