#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading XSS Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) XSStrike            [Advanced XSS scanner and exploit]"
echo -e "2) XSS-Con             [Simple XSS payload generator]"
echo -e "3) XSS-Handler         [Automated XSS handler]"
echo -e "4) XSSer               [XSS Scanner and Exploit Framework]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    # Check for required dependencies
    if ! command -v python3 &>/dev/null; then
      echo -e "\e[1;31mPython3 not installed! Installing...\e[0m"
      pkg install python
    fi
    git clone https://github.com/UltimateHackers/XSStrike
    cd XSStrike || { echo -e "\e[1;31mFailed to enter XSStrike directory\e[0m"; exit 1; }
    python3 xssstrike.py
    ;;
  2)
    git clone https://github.com/irvifa/xss-con
    cd xss-con || { echo -e "\e[1;31mFailed to enter xss-con directory\e[0m"; exit 1; }
    bash xss-con.sh
    ;;
  3)
    git clone https://github.com/MrD0x/XSS-Handler
    cd XSS-Handler || { echo -e "\e[1;31mFailed to enter XSS-Handler directory\e[0m"; exit 1; }
    bash xss-handler.sh
    ;;
  4)
    git clone https://github.com/epsylon/xsser
    cd xsser || { echo -e "\e[1;31mFailed to enter xsser directory\e[0m"; exit 1; }
    python3 xsser.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    bash modules/xss_tools.sh
    ;;
esac
