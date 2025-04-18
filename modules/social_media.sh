#!/bin/bash
clear
echo -e "\e[1;36m[ Social Media & Account Cracking Tools ]\e[0m"
echo -e "\e[1;34mTools to analyze or simulate brute-force and social engineering.\e[0m"
echo
echo -e "\e[1;32m[1] Facebook BruteForce\e[0m      - FB password cracking tool"
echo -e "\e[1;32m[2] Sherlock\e[0m                 - Find usernames across sites"
echo -e "\e[1;32m[3] UserFinder\e[0m              - Search digital presence"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a social tool: " soc_choice

case $soc_choice in
    1) git clone https://github.com/AngelSecurityTeam/Facebook-BruteForce ;;
    2) git clone https://github.com/sherlock-project/sherlock ;;
    3) git clone https://github.com/green7ea/UserFinder ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
