#!/bin/bash
clear
echo -e "\e[1;36m[ Dark Web Exploration & Tor Tools ]\e[0m"
echo -e "\e[1;34mExplore hidden networks safely with anonymity tools.\e[0m"
echo
echo -e "\e[1;32m[1] Tor\e[0m                - Anonymity network browser"
echo -e "\e[1;32m[2] OnionScan\e[0m          - Scan dark web services"
echo -e "\e[1;32m[3] Hidden Service Hunter\e[0m - Track hidden .onion services"
echo -e "\e[1;32m[4] Darkdump\e[0m           - .onion search engine CLI"
echo -e "\e[1;32m[5] Whonix Info\e[0m        - Safe OS for deep web access"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Select a dark web tool: " dark_choice

case $dark_choice in
    1) pkg install tor -y && tor ;;
    2) git clone https://github.com/s-rah/onionscan ;;
    3) git clone https://github.com/wishihab/HiddenEye ;;
    4) git clone https://github.com/joshhighet/darkdump ;;
    5) echo -e "\nVisit: https://www.whonix.org/" ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
