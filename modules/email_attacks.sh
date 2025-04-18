#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Email Attack & Spoofing Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Email-Spammer        \e[90m[Send anonymous emails]"
echo -e "2) Gmail-Hack           \e[90m[Brute force Gmail accounts (demo)]"
echo -e "3) KnockMail            \e[90m[Verify if an email exists]"
echo -e "4) PwnedOrNot           \e[90m[Check if email was breached]"
echo -e "5) EmailPySpam          \e[90m[Python-based email bomber]"
echo -e "0) Back to Main Menu"

read -p $'\n\033[1;33mChoose an option: \033[0m' choice

case $choice in
  1)
    if [ ! -d "Email-Spammer" ]; then
      git clone https://github.com/rooted-cyber/Email-Spammer
    fi
    cd Email-Spammer
    python3 spam.py
    ;;
  2)
    if [ ! -d "gmailhack" ]; then
      git clone https://github.com/noob-hackers/gmailhack
    fi
    cd gmailhack
    bash gmailhack.sh
    ;;
  3)
    if [ ! -d "KnockMail" ]; then
      git clone https://github.com/4w4k3/KnockMail
    fi
    cd KnockMail
    python3 knockmail.py
    ;;
  4)
    if [ ! -d "pwnedOrNot" ]; then
      git clone https://github.com/thewhiteh4t/pwnedOrNot
    fi
    cd pwnedOrNot
    pip install -r requirements.txt
    python3 pwnedornot.py
    ;;
  5)
    if [ ! -d "EmailPySpam" ]; then
      git clone https://github.com/rooted-cyber/EmailPySpam
    fi
    cd EmailPySpam
    python3 main.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
