#!/bin/bash
clear
echo -e "\e[1;33m[+] Manual Installation of Tools\e[0m"
echo -e "\e[1;36m[1] Clone D-TECT-1 (if not installed)\e[0m"
echo -e "\e[1;36m[2] Install Missing Dependencies\e[0m"
echo -e "\e[1;36m[0] Back to Main Menu\e[0m"
echo -n "Choose an option: "
read choice

case $choice in
    1)
        # Manually clone D-TECT-1 repository
        if ! git clone https://github.com/shawarkhanethicalhacker/D-TECT-1.git; then
            echo -e "\e[1;31mFailed to clone D-TECT-1. Please check your internet connection.\e[0m"
            exit 1
        fi
        echo -e "\e[1;32mD-TECT-1 cloned successfully!\e[0m"
        ;;
    2)
        # Install missing dependencies like Python2
        pkg install python2
        echo -e "\e[1;32mPython2 installed successfully!\e[0m"
        ;;
    0)
        # Go back to main menu
        exit
        ;;
    *)
        echo -e "\e[1;31mInvalid option! Please choose a valid option.\e[0m"
        ;;
esac

