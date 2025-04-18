#!/bin/bash
clear
echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "  \e[1;32mInstalling D-TECT 1 (Advanced Scanner)\e[0m"
echo -e "  \e[1;33mGitHub:\e[0m \e[4;36mhttps://github.com/shawarkhanethicalhacker/D-TECT-1\e[0m"
echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
sleep 1

echo -e "\n\e[1;34m[~] Cloning repository...\e[0m"
if git clone https://github.com/shawarkhanethicalhacker/D-TECT-1.git; then
    cd D-TECT-1 || exit
    echo -e "\e[1;34m[~] Running D-TECT...\e[0m"
    python2 d-tect.py
else
    echo -e "\e[1;31m[✘] Failed to connect to GitHub. Please check your internet.\e[0m"
fi
