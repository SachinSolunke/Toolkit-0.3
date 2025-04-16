#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Hashing & Wordlist Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Hasher             [Generate Hashes from Text]"
echo -e "2) HasherDroid        [Android-based Hashing Tool]"
echo -e "3) Hash Generator     [Basic Hash Generator]"
echo -e "4) Hash Buster        [Crack Hashes Using Dictionaries]"
echo -e "5) WlCreator          [Custom Wordlist Creator]"
echo -e "6) GoblinWordGen      [Powerful Wordlist Generator]"
echo -e "7) SMWYG              [Social Media Wordlist Generator]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    git clone https://github.com/Cyber-Atom/Hasher
    cd Hasher
    python3 hasher.py
    ;;
  2)
    git clone https://github.com/Cyber-Atom/HasherDroid
    cd HasherDroid
    bash run.sh
    ;;
  3)
    git clone https://github.com/Hash-Bros/Hash-Generator
    cd Hash-Generator
    python3 hashgen.py
    ;;
  4)
    git clone https://github.com/UltimateHackers/Hash-Buster
    cd Hash-Buster
    python3 hash.py
    ;;
  5)
    git clone https://github.com/rooted-cyber/WlCreator
    cd WlCreator
    python3 creator.py
    ;;
  6)
    git clone https://github.com/rooted-cyber/GoblinWordGenerator
    cd GoblinWordGenerator
    python3 goblin.py
    ;;
  7)
    git clone https://github.com/rooted-cyber/SMWYG
    cd SMWYG
    python3 smwyg.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
