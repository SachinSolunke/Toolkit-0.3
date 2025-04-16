#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Toolkit 0.2... Please wait\e[0m"
sleep 1

# Show the main menu
while true; do
    echo -e "\n\e[1;36m[1] Information Gathering\e[0m"
    echo -e "\e[1;36m[2] Exploitation\e[0m"
    echo -e "\e[1;36m[3] Phishing Tools\e[0m"
    echo -e "\e[1;36m[0] Exit\e[0m"
    echo -n "Choose an option: "
    read choice

    case $choice in
        1)
            ./modules/info_gathering.sh
            ;;
        2)
            ./modules/exploitation.sh
            ;;
        3)
            ./modules/phishing.sh
            ;;
        0)
            echo -e "\e[1;32mExiting Toolkit 0.2... Goodbye!\e[0m"
            exit
            ;;
        *)
            echo -e "\e[1;31mInvalid option! Please choose a valid option.\e[0m"
            ;;
    esac
done
