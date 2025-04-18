#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Hash Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Hash-Buster        [Crack MD5/SHA1 hashes]"
echo -e "2) Hasher            [Generate hash values]"
echo -e "3) HasherDroid       [Android-style hash generator]"
echo -e "4) WlCreator         [Custom Wordlist Creator]"
echo -e "5) GoblinWordGenerator [Smart wordlist generator]"
echo -e "6) SMWYG             [Password Generator]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    # Check if required dependencies are installed
    if ! python3 -c "import hashlib" &>/dev/null; then
      echo -e "\e[1;31mPython3 not installed! Installing...\e[0m"
      pkg install python
    fi
    git clone https://github.com/UltimateHackers/Hash-Buster
    cd Hash-Buster || { echo -e "\e[1;31mFailed to enter Hash-Buster directory\e[0m"; exit 1; }
    python3 hash.py
    ;;
  2)
    # Check if dependencies are installed
    if ! command -v bash &>/dev/null; then
      echo -e "\e[1;31mBash is not installed! Installing...\e[0m"
      pkg install bash
    fi
    git clone https://github.com/CybernetiX-S3C/Hasher
    cd Hasher || { echo -e "\e[1;31mFailed to enter Hasher directory\e[0m"; exit 1; }
    bash Hasher.sh
    ;;
  3)
    git clone https://github.com/rooted-cyber/HasherDroid
    cd HasherDroid || { echo -e "\e[1;31mFailed to enter HasherDroid directory\e[0m"; exit 1; }
    bash start.sh
    ;;
  4)
    git clone https://github.com/rooted-cyber/WlCreator
    cd WlCreator || { echo -e "\e[1;31mFailed to enter WlCreator directory\e[0m"; exit 1; }
    python3 wlcreator.py
    ;;
  5)
    git clone https://github.com/UndeadSec/GoblinWordGenerator
    cd GoblinWordGenerator || { echo -e "\e[1;31mFailed to enter GoblinWordGenerator directory\e[0m"; exit 1; }
    python3 GoblinWordGenerator.py
    ;;
  6)
    git clone https://github.com/mishakorzik/SMWYG
    cd SMWYG || { echo -e "\e[1;31mFailed to enter SMWYG directory\e[0m"; exit 1; }
    python3 smwyg.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    bash modules/hash_tools.sh
    ;;
esac
