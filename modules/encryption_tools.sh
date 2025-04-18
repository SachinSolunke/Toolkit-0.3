#!/bin/bash
clear
echo -e "\e[1;36m[ Encryption & Decryption Tools ]\e[0m"
echo -e "\e[1;34mEncrypt, decrypt, and analyze ciphers and encoded data.\e[0m"
echo
echo -e "\e[1;32m[1] Crypto ToolKit\e[0m    - Multiple encryption/decryption algorithms"
echo -e "\e[1;32m[2] CyberChef CLI\e[0m     - All-in-one encrypt/decrypt tool"
echo -e "\e[1;32m[3] Hash Buster\e[0m       - Crack common hash types"
echo -e "\e[1;32m[4] Caesar Cipher Cracker\e[0m - Break Caesar encoded messages"
echo -e "\e[1;32m[5] AES Encryptor\e[0m     - AES encryption tool"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool to run: " enc_choice

case $enc_choice in
    1) git clone https://github.com/Mebus/cupp ;;
    2) git clone https://github.com/gchq/CyberChef ;;
    3) git clone https://github.com/UltimateHackers/Hash-Buster ;;
    4) git clone https://github.com/D4Vinci/Caesar-Brute-Force ;;
    5) echo -e "\e[1;34mUse openssl to encrypt files:\e[0m openssl aes-256-cbc -in file.txt -out file.enc" ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
