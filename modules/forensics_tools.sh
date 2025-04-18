#!/bin/bash
clear
echo -e "\e[1;36m[ Forensics & Evidence Collection Tools ]\e[0m"
echo -e "\e[1;34mRecover, analyze, and investigate digital traces.\e[0m"
echo
echo -e "\e[1;32m[1] Autopsy\e[0m            - Digital forensics GUI tool"
echo -e "\e[1;32m[2] Binwalk\e[0m           - Analyze binary files for embedded data"
echo -e "\e[1;32m[3] Volatility\e[0m        - Memory forensics tool"
echo -e "\e[1;32m[4] Sleuth Kit\e[0m        - File system forensics toolkit"
echo -e "\e[1;32m[5] Foremost\e[0m          - File recovery based on headers"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a forensic tool: " forensics_choice

case $forensics_choice in
    1) echo -e "\nAutopsy available for PC. Visit: https://www.sleuthkit.org/autopsy/" ;;
    2) pkg install binwalk -y ;;
    3) echo -e "\nInstall Volatility manually: https://github.com/volatilityfoundation/volatility" ;;
    4) pkg install sleuthkit -y ;;
    5) pkg install foremost -y ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
