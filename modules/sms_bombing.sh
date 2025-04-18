#!/bin/bash
clear
echo -e "\e[1;36m[ SMS Bombing & Anon Communication ]\e[0m"
echo -e "\e[1;34mFun or test tools for mass texting and anonymity.\e[0m"
echo
echo -e "\e[1;32m[1] SMS Bomber 300 Free\e[0m   - Send multiple SMS for testing"
echo -e "\e[1;32m[2] AresBomb\e[0m              - Free SMS bombing script"
echo -e "\e[1;32m[3] Anon-SMS\e[0m             - Anonymous SMS sender"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool: " sms_choice

case $sms_choice in
    1) git clone https://github.com/rooted-cyber/SMS-Bomber-300-Free ;;
    2) git clone https://github.com/Bitwise-01/AresBomb ;;
    3) git clone https://github.com/HACK3RY2J/Anon-SMS ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
