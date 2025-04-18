#!/bin/bash
clear
echo -e "\e[1;32m[+] AANU Banner Customizer Activated\e[0m\n"
sleep 1

# Atomic dependencies
echo -e "\e[1;33m[+] Installing required packages...\e[0m"
pkg install toilet figlet cmatrix -y > /dev/null 2>&1
gem install lolcat > /dev/null 2>&1
mkdir -p ~/.aanu
mkdir -p assets/logos

# Skull logo saved locally
cat << 'EOF' > assets/logos/skull_banner.txt
░█▀▀█ ░█─░█ ▀▀█▀▀ ▀▀█▀▀ ░█▀▀█ 
░█─▄▄ ░█▀▀█ ─░█── ─░█── ░█▄▄▀ 
░█▄▄█ ░█─░█ ─░█── ─░█── ░█─░█
EOF

echo -e "\n\e[1;35mSelect your banner style:\e[0m"
echo -e "\e[1;36m[1] Classic AANU"
echo -e "[2] Dragon Fire"
echo -e "[3] Skull Matrix"
echo -e "[4] Ghost Font with Red"
echo -e "[5] Animated Matrix Rain"
echo -e "[6] Custom Hacker Name Banner"
echo -e "[7] Remove Banner\e[0m\n"

read -p "Enter your choice [1-7]: " banner_choice

case $banner_choice in
  1)
    echo "toilet -f big 'AANU TOOLKIT' | lolcat" > ~/.aanu/banner.sh
    ;;
  2)
    echo "toilet -f mono9 -F metal 'DRAGON FIRE' | lolcat" > ~/.aanu/banner.sh
    ;;
  3)
    echo "cat assets/logos/skull_banner.txt | lolcat" > ~/.aanu/banner.sh
    ;;
  4)
    echo "toilet -f ghost 'HACKER MODE' | tput setaf 1" > ~/.aanu/banner.sh
    ;;
  5)
    echo "cmatrix -C green" > ~/.aanu/banner.sh
    ;;
  6)
    read -p "Enter your hacker name: " hacker_name
    echo "toilet -f future \"$hacker_name\" | lolcat" > ~/.aanu/banner.sh
    ;;
  7)
    echo "" > ~/.aanu/banner.sh
    ;;
  *)
    echo -e "\e[1;31mInvalid option!\e[0m"
    exit 1
    ;;
esac

# Add to shell start
if ! grep -q "bash ~/.aanu/banner.sh" ~/.zshrc 2>/dev/null; then
    echo "bash ~/.aanu/banner.sh" >> ~/.zshrc
fi
if ! grep -q "bash ~/.aanu/banner.sh" ~/.bashrc 2>/dev/null; then
    echo "bash ~/.aanu/banner.sh" >> ~/.bashrc
fi

echo -e "\n\e[1;32m[+] Banner applied! Restart Termux to see the magic.\e[0m"
