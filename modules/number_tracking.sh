#!/bin/bash
clear
echo -e "\e[1;36m[ Phone Number Intelligence & Tracking Tools ]\e[0m"
echo -e "\e[1;34mTrack, analyze, and gather intelligence about phone numbers and SIMs.\e[0m"
echo
echo -e "\e[1;32m[1] Trape\e[0m             - GPS tracking via social engineering"
echo -e "\e[1;32m[2] Number-Info\e[0m       - Get detailed info from numbers"
echo -e "\e[1;32m[3] PhoneInfoga\e[0m       - Open source phone number reconnaissance tool"
echo -e "\e[1;32m[4] SIM Toolkit Hijack\e[0m - SIM card analysis & spoofing"
echo -e "\e[1;32m[5] NumSpy\e[0m            - Advanced number OSINT tracking"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Select a tool to run: " num_choice

case $num_choice in
    1) git clone https://github.com/jofpin/trape ;;
    2) git clone https://github.com/sundowndev/Number-Info ;;
    3) git clone https://github.com/sundowndev/PhoneInfoga ;;
    4) echo -e "\n\e[1;34mNote:\e[0m SIM toolkit access requires rooted device and Xposed modules." ;;
    5) git clone https://github.com/maldevel/NumSpy ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
