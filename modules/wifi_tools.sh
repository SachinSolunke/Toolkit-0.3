#!/bin/bash
clear
echo -e "\e[1;36m[ WiFi & Wireless Network Hacking Tools ]\e[0m"
echo -e "\e[1;34mScan, capture handshakes, crack passwords, and analyze networks.\e[0m"
echo
echo -e "\e[1;32m[1] Aircrack-ng\e[0m        - Capture & crack WiFi passwords"
echo -e "\e[1;32m[2] Wifite2\e[0m            - Automated WiFi attack suite"
echo -e "\e[1;32m[3] Reaver\e[0m             - Brute-force WPS pins"
echo -e "\e[1;32m[4] Fluxion\e[0m            - Evil twin & phishing WiFi tool"
echo -e "\e[1;32m[5] Bettercap WiFi\e[0m     - MITM & WiFi attack framework"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Select a WiFi tool: " wifi_choice

case $wifi_choice in
    1) pkg install aircrack-ng -y ;;
    2) git clone https://github.com/derv82/wifite2.git ;;
    3) git clone https://github.com/t6x/reaver-wps-fork-t6x ;;
    4) git clone https://github.com/FluxionNetwork/fluxion.git ;;
    5) pkg install bettercap -y ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
