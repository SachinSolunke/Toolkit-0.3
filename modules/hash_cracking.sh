 #!/bin/bash
source functions/utils.sh
source functions/banner.sh

clear
banner "Password Attacks"

echo -e "$cyan Tools for Hash Cracking, Wordlists, and Brute Force...$reset"
sleep 1

echo -e "$green 1) Hash-Buster          $white[Crack MD5/SHA1 hashes]"
echo -e "$green 2) Hasher              $white[Generate hash values]"
echo -e "$green 3) HasherDroid         $white[Android-style hash generator]"
echo -e "$green 4) WlCreator           $white[Custom Wordlist Creator]"
echo -e "$green 5) GoblinWordGenerator $white[Smart wordlist generator]"
echo -e "$green 6) SMWYG               $white[Password Generator]"
echo -e "$green 0) Back to Main Menu"

echo
read -p $'\e[1;36mChoose an option: \e[0m' passopt

case $passopt in
  1)
    git clone https://github.com/UltimateHackers/Hash-Buster
    cd Hash-Buster
    python3 hash.py
    ;;
  2)
    git clone https://github.com/CybernetiX-S3C/Hasher
    cd Hasher
    bash Hasher.sh
    ;;
  3)
    git clone https://github.com/rooted-cyber/HasherDroid
    cd HasherDroid
    bash start.sh
    ;;
  4)
    git clone https://github.com/rooted-cyber/WlCreator
    cd WlCreator
    python3 wlcreator.py
    ;;
  5)
    git clone https://github.com/UndeadSec/GoblinWordGenerator
    cd GoblinWordGenerator
    python3 GoblinWordGenerator.py
    ;;
  6)
    git clone https://github.com/mishakorzik/SMWYG
    cd SMWYG
    python3 smwyg.py
    ;;
  0)
    bash run.sh
    ;;
  *)
    echo -e "$red Invalid Option!$reset"
    sleep 1
    bash modules/password_attacks.sh
    ;;
esac
