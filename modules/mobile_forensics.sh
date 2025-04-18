#!/bin/bash
clear
echo -e "\e[1;36m[ Mobile Device Forensics Tools ]\e[0m"
echo -e "\e[1;34mTools to analyze file systems, extract data, recover deleted content from Android devices.\e[0m"
echo
echo -e "\e[1;32m[1] Autopsy\e[0m             - Digital forensics platform"
echo -e "\e[1;32m[2] Andriller\e[0m           - Android forensics toolkit"
echo -e "\e[1;32m[3] LiME Forensics\e[0m      - Linux Memory Extractor for Android"
echo -e "\e[1;32m[4] Sleuth Kit\e[0m          - File system analysis"
echo -e "\e[1;32m[5] Android-Forensics\e[0m   - Tools to extract data from Android partitions"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Select a tool to investigate: " forensics_choice

case $forensics_choice in
    1) echo -e "\n\e[1;34mDownload Autopsy for PC:\e[0m https://www.sleuthkit.org/autopsy/" ;;
    2) git clone https://github.com/den4uk/andriller ;;
    3) git clone https://github.com/504ensicsLabs/LiME ;;
    4) pkg install sleuthkit ;;
    5) git clone https://github.com/aymericdamien/Android-Forensics ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
