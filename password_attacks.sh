#!/bin/bash
clear
source functions/banner.sh
banner "Password Attacks"

echo -e "\e[1;33m[+] Loading Password Attack Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Hydra                  [Network brute force login cracker]"
echo -e "2) Cupp                   [Custom wordlist generator]"
echo -e "3) Facebook BruteForce   [FB login brute tool]"
echo -e "4) Gmail Hack            [Experimental Gmail brute tool]"
echo -e "5) Hash-Identifier       [Identify unknown hash types]"
echo -e "6) Hashcat (Demo)        [Offline password recovery]"
echo -e "7) Wordlist Creator      [Simple wordlist generator]"
echo -e "0) Back to Main Menu"

read -p $'\n\033[1;32mSelect an option:\033[0m ' choice
case $choice in
  1)
    pkg install hydra -y
    echo -e "\n\e[1;34mHydra installed. Example: hydra -l admin -P pass.txt ftp://127.0.0.1\e[0m"
    ;;
  2)
    git clone https://github.com/Mebus/cupp
    cd cupp && python3 cupp.py
    ;;
  3)
    git clone https://github.com/IAmBlackHacker/Facebook-BruteForce
    cd Facebook-BruteForce && python3 facebook.py
    ;;
  4)
    git clone https://github.com/BullsEye0/gmail-hack
    cd gmail-hack && bash gmailHack.sh
    ;;
  5)
    git clone https://github.com/Hash-Identifier/Hash-Identifier
    cd Hash-Identifier && python3 Hash_ID.py
    ;;
  6)
    echo -e "\e[1;33mNote: Hashcat not fully supported in Termux.\nDemo only.\e[0m"
    termux-open-url https://hashcat.net/wiki/
    ;;
  7)
    git clone https://github.com/codingo/wordlistcreator
    cd wordlistcreator && python3 wordlistcreator.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac

# Hash-Buster Section
if [ ! -d "Hash-Buster" ]; then
  git clone https://github.com/UltimateHackers/Hash-Buster
fi
cd Hash-Buster || { echo -e "$red Failed to enter Hash-Buster directory!$reset"; exit 1; }

# Install required dependency
pip install websocket-client

python3 hash.py
