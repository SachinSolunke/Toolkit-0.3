#!/bin/bash
clear
echo -e "\e[1;36m[ System & Network Monitoring Tools ]\e[0m"
echo -e "\e[1;34mMonitor system resources, networks, and real-time traffic.\e[0m"
echo
echo -e "\e[1;32m[1] NetHogs\e[0m         - Real-time network bandwidth tracker"
echo -e "\e[1;32m[2] iftop\e[0m           - Live network usage by host"
echo -e "\e[1;32m[3] htop\e[0m            - Interactive process viewer"
echo -e "\e[1;32m[4] IOTop\e[0m           - Disk I/O usage by process"
echo -e "\e[1;32m[5] SpeedTest CLI\e[0m   - Test internet speed"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a monitoring tool: " mon_choice

case $mon_choice in
    1) pkg install nethogs -y ;;
    2) pkg install iftop -y ;;
    3) pkg install htop -y ;;
    4) pkg install iotop -y ;;
    5) pkg install speedtest -y && speedtest ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
