#!/bin/bash
clear
echo -e "\e[1;35m[+] Social Media Tools Loaded...\e[0m"
echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Facebook BruteForce     [Brute Force on FB Accounts]"
echo -e "2) Sherlock                [Find usernames across platforms]"
echo -e "3) UserFinder              [Search user profiles by name/ID]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;33m[+] Cloning Facebook BruteForce Tool...\e[0m"
    git clone https://github.com/IAmBlackHacker/Facebook-BruteForce
    cd Facebook-BruteForce
    python2 fb.py
    ;;
  2)
    echo -e "\e[1;33m[+] Installing Sherlock...\e[0m"
    git clone https://github.com/sherlock-project/sherlock.git
    cd sherlock
    pip install -r requirements.txt
    python3 sherlock.py anuj
    ;;
  3)
    echo -e "\e[1;33m[+] Cloning UserFinder...\e[0m"
    git clone https://github.com/JustMichi/UserFinder.git
    cd UserFinder
    python3 userfinder.py
    ;;
  0)
    echo -e "\e[1;31mBack to Main Menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
