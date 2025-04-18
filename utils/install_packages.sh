#!/bin/bash
clear
echo -e "\e[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
echo -e "\e[1;32m   Aanu Toolkit Environment Setup\e[0m"
echo -e "\e[1;35m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
sleep 1

echo -e "\n\e[1;34m[~] Updating system packages...\e[0m"
apt update -y && apt upgrade -y

echo -e "\n\e[1;34m[~] Installing essential packages...\e[0m"
pkg install -y git python python2 curl wget php nmap ruby zip unzip

echo -e "\n\e[1;34m[~] Installing Python & Ruby dependencies...\e[0m"
pip install requests termcolor bs4 rich
gem install lolcat

echo -e "\n\e[1;32m[✔] All packages installed successfully!\e[0m"
echo -e "\e[1;33m[i] You are now ready to use Aanu Toolkit!\e[0m"
