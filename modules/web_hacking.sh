#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Web Hacking Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) SQLMap              [Auto SQL Injection Tool]"
echo -e "2) WebSploit           [Web Scanner and Exploiter]"
echo -e "3) Nikto               [Web Server Vulnerability Scanner]"
echo -e "4) XAttacker           [Auto Web Exploitation Tool]"
echo -e "5) Fim                 [Find admin login & vulnerabilities]"
echo -e "6) SH33LL              [Simple WebShell Exploiter]"
echo -e "7) SqlMate             [Simple SQLi Scanner]"
echo -e "8) PyDDoser            [Python-based DDoS Tool]"
echo -e "9) Ultra-DDos          [High-Power DDoS Tool]"
echo -e "10) WhatWeb            [Detect CMS/Tech Stack]"
echo -e "11) Wfuzz              [Web Fuzzer for Directory Bruteforce]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    pkg install sqlmap -y
    sqlmap --help
    ;;
  2)
    git clone https://github.com/The404Hacking/Websploit
    cd Websploit
    python3 websploit.py
    ;;
  3)
    pkg install nikto -y
    nikto
    ;;
  4)
    git clone https://github.com/Moham3dRiahi/XAttacker
    cd XAttacker
    perl XAttacker.pl
    ;;
  5)
    git clone https://github.com/rooted-cyber/fim
    cd fim
    python3 fim.py
    ;;
  6)
    git clone https://github.com/LOoLzeC/SH33LL
    cd SH33LL
    bash install.sh
    ;;
  7)
    git clone https://github.com/UltimateHackers/SQLmate
    cd SQLmate
    python3 sqlmate.py
    ;;
  8)
    git clone https://github.com/rooted-cyber/PyDDoser
    cd PyDDoser
    python3 PyDDoser.py
    ;;
  9)
    git clone https://github.com/rooted-cyber/Ultra-DDos
    cd Ultra-DDos
    python3 ultra.py
    ;;
  10)
    pkg install whatweb -y
    whatweb
    ;;
  11)
    pkg install wfuzz -y
    wfuzz
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
