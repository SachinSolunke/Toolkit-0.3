#!/bin/bash
clear
echo -e "\e[1;32m[+] Installing Hacker Fonts... Please wait\e[0m"
sleep 1

mkdir -p ~/.figlet

declare -A fonts=(
  ["ghost"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Ghost.flf"
  ["bloody"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Bloody.flf"
  ["cyberlarge"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Cyberlarge.flf"
  ["poison"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Poison.flf"
  ["ivrit"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Ivrit.flf"
  ["shadow"]="https://raw.githubusercontent.com/xero/figlet-fonts/master/Shadow.flf"
)

echo -e "\n\e[1;33m[?] Previewing Fonts:\e[0m"
for name in "${!fonts[@]}"; do
  echo -e "\e[1;35m--- $name ---\e[0m"
  figlet -f "$name" "AANU" 2>/dev/null || echo "[!] Preview not available"
  echo
done

for name in "${!fonts[@]}"; do
  url="${fonts[$name]}"
  echo -e "\e[1;34m[+] Downloading $name.flf\e[0m"
  wget -q -O "$HOME/.figlet/$name.flf" "$url"

  if [[ -f "$HOME/.figlet/$name.flf" ]]; then
    echo -e "\e[1;32m[✓] $name installed.\e[0m"
  else
    echo -e "\e[1;31m[-] $name failed.\e[0m"
  fi
done

if ! grep -q "FIGLET_FONTDIR" ~/.zshrc; then
  echo 'export FIGLET_FONTDIR=$HOME/.figlet' >> ~/.zshrc
  echo 'alias figlet="figlet -f ghost"' >> ~/.zshrc
  echo 'alias aanubanner="figlet -f ghost AANU | lolcat"' >> ~/.zshrc
fi
export FIGLET_FONTDIR=$HOME/.figlet

echo -e "\n\e[1;34m[✓] Total Fonts Installed: $(ls ~/.figlet | wc -l)\e[0m"

# Optional Binary Checker
echo -e "\n\e[1;36m[+] Checking Required Binaries:\e[0m"
for cmd in figlet toilet lolcat; do
  if ! command -v $cmd &> /dev/null; then
    echo -e "\e[1;31m[-] $cmd is missing\e[0m"
  else
    echo -e "\e[1;32m[✓] $cmd is installed\e[0m"
  fi
done

# Random hacker quote
quotes=(
  "Hack the planet!"
  "Code is poetry."
  "You are the glitch in the Matrix."
  "No system is safe."
  "Root is just a mindset."
)
random_quote=${quotes[$RANDOM % ${#quotes[@]}]}
echo -e "\n\e[1;36mQuote:\e[0m \"$random_quote\""

read -p $'\nPress enter to return to main menu...'
