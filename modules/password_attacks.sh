#!/bin/bash
clear
echo -e "\e[1;32m[+] Loading Password Attack Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Hydra (Brute Force)          [SSH, FTP, Telnet, etc.]"
echo -e "2) Facebook BruteForce (Demo)  [For educational use only]"
echo -e "3) Cupp - Wordlist Creator     [Custom wordlist gen]"
echo -e "4) BruteX (Auto Brute)         [SSH, FTP, RDP]"
echo -e "5) Beginner Guide              [Basics + Protection Tips]"
echo -e "0) Back to Main Menu"

read -p $'\n\033[1;33mChoose an option: \033[0m' choice

case $choice in
  1)
    echo -e "\n\e[1;35m[+] Starting Hydra (demo)...\e[0m"
    echo -e "\e[1;33mCommand Example:\e[0m hydra -l admin -P passwords.txt ftp://192.168.1.1"
    ;;
  2)
    echo -e "\n\e[1;35m[+] Launching Facebook BruteForce (demo)...\e[0m"
    echo -e "\e[1;31mNote: Real attack is illegal. This is for learning only.\e[0m"
    echo -e "\e[1;32mSimulated attack started on target@fb.com...\e[0m"
    sleep 2
    echo "[!] Login attempt failed... trying next..."
    ;;
  3)
    echo -e "\n\e[1;35m[+] Running Cupp (Common User Password Profiler)...\e[0m"
    cupp
    ;;
  4)
    echo -e "\n\e[1;35m[+] Starting BruteX...\e[0m"
    echo -e "Cloning and launching tool..."
    git clone https://github.com/1N3/BruteX
    cd BruteX && chmod +x install.sh && ./install.sh
    ;;
  5)
    clear
    echo -e "\e[1;36m========= Password Attack Guide =========\e[0m"
    echo -e "\e[1;32mTopics Covered:\e[0m"
    echo " - What are brute force attacks?"
    echo " - Difference between dictionary and brute"
    echo " - How to secure your accounts"
    echo " - How to practice attacks legally"
    echo -e "\n\e[1;34mWatch: NetworkChuck Brute Force Basics -> https://youtu.be/jvV8YTzV9FY"
    echo -e "\n\e[1;35mSignature: Annu & AI God\e[0m"
    read -p $'\nPress Enter to return...'
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
