#!/bin/bash
clear
echo -e "\e[1;35m===============================\e[0m"
echo -e "\e[1;33m     Installing D-TECT\e[0m"
echo -e "\e[1;32m     Info Gathering Tool\e[0m"
echo -e "\e[1;34m     Author: SHAWAR KHAN\e[0m"
echo -e "\e[1;35m===============================\e[0m"
sleep 1

echo -e "\n\e[1;36m[~] Cloning Repository...\e[0m"
git clone https://github.com/shawarkhanethicalhacker/D-TECT-1.git

if [ -d "D-TECT-1" ]; then
    cd D-TECT-1
    chmod +x d-tect.py
    echo -e "\e[1;32m[✔] D-TECT Installed Successfully!\e[0m"
    echo -e "\n\e[1;33m[>] To Run: python2 d-tect.py\e[0m"
else
    echo -e "\e[1;31m[✖] Installation Failed. Check your internet or repo URL.\e[0m"
fi
