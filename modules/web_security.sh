#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Web Application Security Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) SQLMap              [Automated SQL Injection Tool]"
echo -e "2) Nikto               [Web Server Scanner]"
echo -e "3) Burp Suite          [Web Application Pen Testing Suite]"
echo -e "4) OWASP ZAP           [Web Application Security Testing]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;32mInstalling SQLMap...\e[0m"
    apt install sqlmap
    ;;
  2)
    echo -e "\e[1;32mInstalling Nikto...\e[0m"
    apt install nikto
    ;;
  3)
    echo -e "\e[1;32mInstalling Burp Suite...\e[0m"
    apt install burpsuite
    ;;
  4)
    echo -e "\e[1;32mInstalling OWASP ZAP...\e[0m"
    apt install owasp-zap
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
