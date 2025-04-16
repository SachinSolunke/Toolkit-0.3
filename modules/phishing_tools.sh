#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Phishing Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Zphisher"
echo -e "2) BlackEye"
echo -e "3) HiddenEye"
echo -e "4) Saycheese"
echo -e "5) ShellPhish"
echo -e "6) AIOPhish"
echo -e "7) MaskPhish"
echo -e "8) I-See-You"
echo -e "9) NPhish"
echo -e "0) Back to Main Menu"
echo

read -p "Choose a tool: " choice

case $choice in
    1) git clone https://github.com/htr-tech/zphisher ;;
    2) git clone https://github.com/thelinuxchoice/blackeye ;;
    3) git clone https://github.com/DarkSecDevelopers/HiddenEye ;;
    4) git clone https://github.com/thelinuxchoice/saycheese ;;
    5) git clone https://github.com/thelinuxchoice/shellphish ;;
    6) git clone https://github.com/Rajkumrdusad/AIOPhish ;;
    7) git clone https://github.com/jaykali/maskphish ;;
    8) git clone https://github.com/DarkSecDevelopers/I-See-You ;;
    9) git clone https://github.com/KasRoudra/NPhish ;;
    0) bash ~/Toolkit-0.2/run.sh ;;
    *) echo -e "\e[1;31m[!] Invalid Option!\e[0m" ;;
esac

echo -e "\e[1;33m[+] Loading Phishing Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Zphisher        [ Phishing Toolkit by HTTech ]"
echo -e "2) BlackEye        [ Popular Phishing Pages ]"
echo -e "3) HiddenEye       [ Advanced Phishing + Keylogger ]"
echo -e "4) Saycheese       [ Webcam Phishing Tool ]"
echo -e "5) ShellPhish      [ Simple Phishing Pages ]"
echo -e "6) AIOPhish        [ All-In-One Phishing Tool ]"
echo -e "7) MaskPhish       [ URL Masking Tool ]"
echo -e "8) I-See-You       [ Location Tracker Phishing ]"
echo -e "9) NPhish          [ Next-Gen Phishing Framework ]"
echo -e "10) CamPhish       [ Camera Access via Link ]"
echo -e "11) SocialFish     [ Phishing Framework with GUI ]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;33m[+] Running Zphisher...\e[0m"
    git clone https://github.com/htr-tech/zphisher.git
    cd zphisher
    bash zphisher.sh
    ;;
  2)
    echo -e "\e[1;33m[+] Running BlackEye...\e[0m"
    git clone https://github.com/An0nUD4Y/BlackEye.git
    cd BlackEye
    bash BlackEye.sh
    ;;
  3)
    echo -e "\e[1;33m[+] Running HiddenEye...\e[0m"
    git clone https://github.com/DarkSecDevelopers/HiddenEye.git
    cd HiddenEye
    python3 HiddenEye.py
    ;;
  4)
    echo -e "\e[1;33m[+] Running Saycheese...\e[0m"
    git clone https://github.com/techwhaleindia/saycheese.git
    cd saycheese
    python3 saycheese.py
    ;;
  5)
    echo -e "\e[1;33m[+] Running ShellPhish...\e[0m"
    git clone https://github.com/Techzindia/shellphish.git
    cd shellphish
    bash shellphish.sh
    ;;
  6)
    echo -e "\e[1;33m[+] Running AIOPhish...\e[0m"
    git clone https://github.com/Techzindia/AIOPhish.git
    cd AIOPhish
    bash aio.sh
    ;;
  7)
    echo -e "\e[1;33m[+] Running MaskPhish...\e[0m"
    git clone https://github.com/Techzindia/maskphish.git
    cd maskphish
    bash maskphish.sh
    ;;
  8)
    echo -e "\e[1;33m[+] Running I-See-You...\e[0m"
    git clone https://github.com/Techzindia/i-see-you.git
    cd i-see-you
    bash i-see-you.sh
    ;;
  9)
    echo -e "\e[1;33m[+] Running NPhish...\e[0m"
    git clone https://github.com/Techzindia/nphish.git
    cd nphish
    bash nphish.sh
    ;;
  10)
    echo -e "\e[1;33m[+] Running CamPhish...\e[0m"
    git clone https://github.com/Techzindia/camphish.git
    cd camphish
    bash camphish.sh
    ;;
  11)
    echo -e "\e[1;33m[+] Running SocialFish...\e[0m"
    git clone https://github.com/UndeadSec/SocialFish.git
    cd SocialFish
    python3 socialfish.py
    ;;
  0)
    echo -e "\e[1;31mExiting...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
