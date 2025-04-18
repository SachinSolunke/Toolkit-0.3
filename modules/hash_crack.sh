#!/bin/bash
source functions/utils.sh
source functions/banner.sh

clear
banner "Hash Cracking & Wordlists"

echo -e "$bold$cyan[+] Loading Hash Tools and Wordlist Generators...$reset"
sleep 1

echo -e "\n$bold$yellow Available Tools:$reset"
echo -e "$green 1) Hash Buster         $white[Crack MD5/SHA1 using online DB]"
echo -e "$green 2) Hasher             $white[Hash Type Detector / Encoder]"
echo -e "$green 3) Hash Generator     $white[Create MD5, SHA1, etc.]"
echo -e "$green 4) WlCreator          $white[Simple Wordlist Generator]"
echo -e "$green 5) GoblinWordGen      $white[Advanced Wordlist Maker]"
echo -e "$green 6) Hashcat (Info)     $white[Guide only — not for Termux]"
echo -e "$green 0) Back to Main Menu"

echo
read -p $'\e[1;36mChoose an option: \e[0m' choice

case $choice in
  1)
    git clone https://github.com/UltimateHackers/Hash-Buster ~/tools/Hash-Buster
    cd ~/tools/Hash-Buster && python3 hash.py
    ;;
  2)
    git clone https://github.com/CybernetiX-S3C/Hasher ~/tools/Hasher
    cd ~/tools/Hasher && bash hasher.sh
    ;;
  3)
    git clone https://github.com/root-ID/Hash-Generator ~/tools/Hash-Generator
    cd ~/tools/Hash-Generator && python3 Hash-Generator.py
    ;;
  4)
    git clone https://github.com/root-ID/WlCreator ~/tools/WlCreator
    cd ~/tools/WlCreator && python3 WlCreator.py
    ;;
  5)
    git clone https://github.com/UndeadSec/GoblinWordGenerator ~/tools/GoblinWordGenerator
    cd ~/tools/GoblinWordGenerator && python3 Goblin.py
    ;;
  6)
    clear
    echo -e "$bold$blue Hashcat Info:$reset"
    echo -e "$white Hashcat is a powerful GPU-based hash cracker."
    echo -e "$white It is not supported on Termux due to hardware limitations."
    echo -e "$white To use it, try on Kali Linux or PC."
    echo
    read -p "Press Enter to return..." temp
    bash modules/hash_crack.sh
    ;;
  0)
    bash run.sh
    ;;
  *)
    echo -e "$red Invalid option. Try again.$reset"
    ;;
esac
