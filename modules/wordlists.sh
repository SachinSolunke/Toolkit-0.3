#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Wordlist & Payload Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) WlCreator            [Custom Wordlist Maker]"
echo -e "2) GoblinWordGenerator  [Fantasy Wordlist Generator]"
echo -e "3) SMWYG                [Social Media Wordlist Gen]"
echo -e "4) Manual Payload Maker"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    git clone https://github.com/u0pattern/WlCreator
    cd WlCreator
    python3 WlCreator.py
    ;;
  2)
    git clone https://github.com/UndeadSec/GoblinWordGenerator
    cd GoblinWordGenerator
    python3 goblinwordgenerator.py
    ;;
  3)
    git clone https://github.com/ArabHackers/SMWYG
    cd SMWYG
    python3 smwyg.py
    ;;
  4)
    echo -e "\e[1;32mManual payload maker...\e[0m"
    echo -e "Enter base word (e.g., password): "
    read base
    echo -e "Generating variants..."
    echo "$base" > payloads.txt
    echo "${base}123" >> payloads.txt
    echo "${base}@" >> payloads.txt
    echo "${base}2025" >> payloads.txt
    echo "Payloads saved to payloads.txt"
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
