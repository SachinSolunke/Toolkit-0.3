#!/bin/bash
clear
echo -e "\e[1;36m[ OSINT Tools - Open Source Intelligence Gathering ]\e[0m"
echo -e "\e[1;34mFind usernames, emails, locations, phone numbers and online footprints.\e[0m"
echo
echo -e "\e[1;32m[1] Sherlock\e[0m           - Find usernames across platforms"
echo -e "\e[1;32m[2] UserFinder\e[0m         - Search for user info"
echo -e "\e[1;32m[3] Infoga\e[0m             - Email OSINT framework"
echo -e "\e[1;32m[4] PhoneInfoga\e[0m        - Phone number information"
echo -e "\e[1;32m[5] SpiderFoot\e[0m         - OSINT automation framework"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose an OSINT tool: " osint_choice

case $osint_choice in
    1) git clone https://github.com/sherlock-project/sherlock ;;
    2) git clone https://github.com/rajkumardusad/UserFinder ;;
    3) git clone https://github.com/m4ll0k/Infoga ;;
    4) git clone https://github.com/sundowndev/PhoneInfoga ;;
    5) git clone https://github.com/smicallef/spiderfoot ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
