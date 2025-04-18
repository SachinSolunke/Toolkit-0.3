#!/bin/bash
clear
echo -e "\e[1;36m[ Cryptography & Steganography Tools ]\e[0m"
echo -e "\e[1;34mEncrypt, hide, and crack messages like a cyber ninja.\e[0m"
echo
echo -e "\e[1;32m[1] Hashcat\e[0m           - Password cracker using GPUs"
echo -e "\e[1;32m[2] John The Ripper\e[0m   - Cracks encrypted passwords"
echo -e "\e[1;32m[3] Steghide\e[0m          - Hides data in images/audio"
echo -e "\e[1;32m[4] GnuPG\e[0m             - File encryption tool"
echo -e "\e[1;32m[5] ZuluCrypt\e[0m        - GUI-based encryption (Linux)"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a crypto tool: " crypto_choice

case $crypto_choice in
    1) echo -e "\nInstall Hashcat manually: https://github.com/hashcat/hashcat" ;;
    2) pkg install john -y ;;
    3) pkg install steghide -y ;;
    4) pkg install gnupg -y ;;
    5) echo -e "\nVisit: https://mhogomchungu.github.io/zuluCrypt/" ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
