#!/bin/bash
source functions/utils.sh
source functions/banner.sh

clear
banner "Denial of Service Attacks"

echo -e "$cyan DoS Tools to perform various denial of service attacks...$reset"
sleep 1

echo -e "$green 1) PyDDoser            $white[Simple DoS attack using Python]"
echo -e "$green 2) Ultra-DDos         $white[Powerful DDoS Tool]"
echo -e "$green 3) AresBomb           $white[Multi-Protocol DDoS Attack Tool]"
echo -e "$green 4) XAttacker          $white[Advanced XSS and DoS attacker]"
echo -e "$green 5) D-Tech             $white[Easy DoS Attacker for beginners]"
echo -e "$green 0) Back to Main Menu"

echo
read -p $'\e[1;36mChoose an option: \e[0m' dosopt

case $dosopt in
  1)
    git clone https://github.com/Techzindia/PyDDoser
    cd PyDDoser
    python3 pyddos.py
    ;;
  2)
    git clone https://github.com/UndeadSec/Ultra-DDos
    cd Ultra-DDos
    python3 ultra-ddos.py
    ;;
  3)
    git clone https://github.com/ErikEJ/AresBomb
    cd AresBomb
    python3 AresBomb.py
    ;;
  4)
    git clone https://github.com/anshumanp/attacker
    cd attacker
    python3 xattacker.py
    ;;
  5)
    git clone https://github.com/mazen160/D-Tech
    cd D-Tech
    bash install.sh
    ;;
  0)
    bash run.sh
    ;;
  *)
    echo -e "$red Invalid Option!$reset"
    sleep 1
    bash modules/dos_attacks.sh
    ;;
esac
