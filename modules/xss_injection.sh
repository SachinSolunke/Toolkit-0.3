#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading XSS & Injection Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) XSStrike           [Advanced XSS Detection]"
echo -e "2) XSSCon             [Fast XSS Scanner]"
echo -e "3) XanXSS             [Reflected XSS Finder]"
echo -e "4) SQLMap             [Automated SQL Injection Tool]"
echo -e "5) SqlMate            [Lightweight SQLi Scanner]"
echo -e "6) Commix             [Command Injection Tool]"
echo -e "7) Blazy              [Login Form Vulnerability Scanner]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    git clone https://github.com/s0md3v/XSStrike
    cd XSStrike
    python3 xsstrike.py
    ;;
  2)
    git clone https://github.com/UltimateHackers/XSSCon
    cd XSSCon
    python3 xsscon.py
    ;;
  3)
    git clone https://github.com/Ekultek/XanXSS
    cd XanXSS
    python3 xanxss.py
    ;;
  4)
    pkg install sqlmap -y
    sqlmap --help
    ;;
  5)
    git clone https://github.com/UltimateHackers/Sqlmate
    cd Sqlmate
    python3 sqlmate.py
    ;;
  6)
    git clone https://github.com/commixproject/commix
    cd commix
    python3 commix.py
    ;;
  7)
    git clone https://github.com/UltimateHackers/Blazy
    cd Blazy
    python3 blazy.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
