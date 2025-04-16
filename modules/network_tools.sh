#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Network Tools & MITM...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Wireshark           [Packet Sniffing & Analysis]"
echo -e "2) Ettercap            [MITM Attack Tool]"
echo -e "3) DNSSpoof            [DNS Spoofing Tool]"
echo -e "4) MITMf               [Man-In-The-Middle Framework]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;32mInstalling Wireshark...\e[0m"
    apt install wireshark
    ;;
  2)
    echo -e "\e[1;32mInstalling Ettercap...\e[0m"
    apt install ettercap-graphical
    ;;
  3)
    echo -e "\e[1;32mInstalling DNSSpoof...\e[0m"
    apt install dnsmasq
    ;;
  4)
    echo -e "\e[1;32mInstalling MITMf...\e[0m"
    git clone https://github.com/byt3bl33d3r/MITMf
    cd MITMf
    pip install -r requirements.txt
    python mitmf.py
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
