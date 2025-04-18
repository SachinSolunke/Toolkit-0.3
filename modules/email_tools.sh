#!/bin/bash
clear
echo -e "\e[1;36m[ Email Hacking & Spoofing Tools ]\e[0m"
echo -e "\e[1;34mTrace emails, spoof senders, and gather sensitive information.\e[0m"
echo
echo -e "\e[1;32m[1] Hack-Gmail\e[0m          - Gmail Bruteforce tool"
echo -e "\e[1;32m[2] KnockMail\e[0m           - Check if email exists"
echo -e "\e[1;32m[3] PwnedOrNot\e[0m          - Email breach checker"
echo -e "\e[1;32m[4] Email-Spammer\e[0m       - Send spoof emails"
echo -e "\e[1;32m[5] EmailPySpam\e[0m         - Python email spammer"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose an email tool: " email_choice

case $email_choice in
    1) git clone https://github.com/noob-hackers/hack-gmail ;;
    2) git clone https://github.com/4w4k3/KnockMail ;;
    3) git clone https://github.com/thewhiteh4t/pwnedOrNot ;;
    4) git clone https://github.com/Ha3MrX/Email-Spammer ;;
    5) git clone https://github.com/N1ght420/EmailPySpam ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
