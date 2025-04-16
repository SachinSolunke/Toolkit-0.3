#!/bin/bash
clear
echo -e "\e[1;32m[+] Information Gathering Tools Loaded...\e[0m"
echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) AstraNmap        [Advanced Nmap Wrapper]"
echo -e "2) OSIF             [Open Source Info Facebook]"
echo -e "3) Red Hawk         [Website Scanner]"
echo -e "4) ReconDog         [All-in-One Info Tool]"
echo -e "5) D-TECT           [All-purpose Scanner]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;33m[+] Running AstraNmap...\e[0m"
    git clone https://github.com/Gameye98/AstraNmap.git
    cd AstraNmap
    python2 astra.py
    ;;
  2)
    echo -e "\e[1;33m[+] Running OSIF...\e[0m"
    git clone https://github.com/ciku370/OSIF.git
    cd OSIF
    python2 osif.py
    ;;
  3)
    echo -e "\e[1;33m[+] Running Red Hawk...\e[0m"
    git clone https://github.com/Tuhinshubhra/RED_HAWK.git
    cd RED_HAWK
    php rhawk.php
    ;;
  4)
    echo -e "\e[1;33m[+] Running ReconDog...\e[0m"
    git clone https://github.com/s0md3v/ReconDog.git
    cd ReconDog
    python2 dog.py
    ;;
  5)
    echo -e "\e[1;33m[+] Running D-TECT...\e[0m"
    git clone https://github.com/shawarkhanethicalhacker/D-TECT-1.git
    cd D-TECT-1
    python2 d-tect.py
    ;;
  0)
    echo -e "\e[1;31mBack to Main Menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
echo -e "\e[1;33m[+] Loading Information Gathering Tools...\e[0m"
sleep 1

# Yahan tools list ya aur submenu add karo
echo -e "\n\e[1;36m- AstraNmap"
echo -e "- OSIF"
echo -e "- Red Hawk"
# etc

echo -e "\e[1;33m[+] Loading Information Gathering Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) AstraNmap"
echo -e "2) OSIF"
echo -e "3) Red Hawk"
echo -e "4) ReconDog"
echo -e "5) MaxSubdoFinder"
echo -e "6) D-Tech"
echo -e "0) Back to Main Menu"

read -p $'\n\e[1;32mChoose a tool:\e[0m ' tool_choice
