#!/bin/bash

clear
echo -e "\e[1;32m[+] Installing Zphisher...\e[0m"
sleep 1

# Description
echo -e "\n\e[1;36mTool:\e[0m Zphisher - Advanced Phishing Tool"
echo -e "\e[1;36mUsage:\e[0m Fake login pages for social media sites (Facebook, Instagram, etc.)"
echo -e "\e[1;36mAuthor:\e[0m HTTech"

# Dependencies
pkg install -y git php curl openssh

# Clone the tool
cd $HOME
git clone https://github.com/htr-tech/zphisher.git

echo -e "\n\e[1;32m[✓] Zphisher Installed!"
echo -e "\e[1;33mTo run:\e[0m cd ~/zphisher && bash zphisher.sh"
