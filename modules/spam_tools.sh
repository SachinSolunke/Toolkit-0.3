#!/bin/bash
clear
echo -e "\e[1;33m[+] SMS & Email Spamming Tools Loaded...\e[0m"
echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) SMS-Bomber-300-Free     [Free SMS Bomber]"
echo -e "2) AresBomb                [Powerful SMS Bomber]"
echo -e "3) Anon-SMS                [Anonymous SMS Sender]"
echo -e "4) TBomb                   [Popular SMS Bomber]"
echo -e "5) Spymer                  [Spam Tools]"
echo -e "6) Email-Spammer           [Send spam emails]"
echo -e "7) Gmail-Hack              [Gmail BruteForcing]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    git clone https://github.com/rooted-cyber/SMS-Bomber-300-Free
    cd SMS-Bomber-300-Free
    bash sms.sh
    ;;
  2)
    git clone https://github.com/Ha3MrX/AresBomb.git
    cd AresBomb
    python3 Ares.py
    ;;
  3)
    git clone https://github.com/HACK3RY2J/Anon-SMS
    cd Anon-SMS
    bash Anon-SMS.sh
    ;;
  4)
    git clone https://github.com/TheSpeedX/TBomb.git
    cd TBomb
    bash TBomb.sh
    ;;
  5)
    git clone https://github.com/Spam-Cyber/Spymer.git
    cd Spymer
    python3 spymer.py
    ;;
  6)
    git clone https://github.com/rooted-cyber/Email-Spammer
    cd Email-Spammer
    python3 spam.py
    ;;
  7)
    git clone https://github.com/rooted-cyber/Gmail-Hack
    cd Gmail-Hack
    python gmail.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
