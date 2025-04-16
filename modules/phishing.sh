#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Phishing Tools...\e[0m"
sleep 1

# Directory for tools
TOOL_DIR=~/Toolkit-0.2/tools/phishing
mkdir -p $TOOL_DIR
cd $TOOL_DIR

# Tool List
while true; do
    clear
    echo -e "\e[1;35m██████╗ ██╗  ██╗██╗███████╗██╗  ██╗██╗███╗   ██╗ ██████╗ \e[0m"
    echo -e "\e[1;35m██╔══██╗██║  ██║██║██╔════╝██║  ██║██║████╗  ██║██╔════╝ \e[0m"
    echo -e "\e[1;35m██████╔╝███████║██║███████╗███████║██║██╔██╗ ██║██║  ███╗\e[0m"
    echo -e "\e[1;35m██╔═══╝ ██╔══██║██║╚════██║██╔══██║██║██║╚██╗██║██║   ██║\e[0m"
    echo -e "\e[1;35m██║     ██║  ██║██║███████║██║  ██║██║██║ ╚████║╚██████╔╝\e[0m"
    echo -e "\e[1;35m╚═╝     ╚═╝  ╚═╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ \e[0m"
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
    echo -e "10) CamPhish"
    echo -e "11) SocialFish"
    echo -e "0) Back to Main Menu"
    echo -ne "\nChoose an option: "
    read choice

    case $choice in
        1) git clone https://github.com/htr-tech/zphisher ;;
        2) git clone https://github.com/An0nUD4Y/blackeye ;;
        3) git clone https://github.com/DarkSecDevelopers/HiddenEye ;;
        4) git clone https://github.com/hangetzzu/saycheese ;;
        5) git clone https://github.com/thelinuxchoice/shellphish ;;
        6) git clone https://github.com/Rajkumrdusad/AIOPhish ;;
        7) git clone https://github.com/jaykali/maskphish ;;
        8) git clone https://github.com/DarkSecDevelopers/I-See-You ;;
        9) git clone https://github.com/noob-hackers/nphish ;;
        10) git clone https://github.com/techchipnet/CamPhish ;;
        11) git clone https://github.com/xHak9x/SocialFish ;;
        0) break ;;
        *) echo -e "\e[1;31mInvalid choice!\e[0m"; sleep 1 ;;
    esac
done

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) Zphisher          [ Phishing Toolkit by HTTech ]"
echo -e "2) BlackEye          [ Popular Phishing Pages ]"
echo -e "3) HiddenEye         [ Advanced Phishing + Keylogger ]"
echo -e "4) Saycheese         [ Webcam Phishing Tool ]"
echo -e "5) ShellPhish        [ Simple Phishing Pages ]"
echo -e "6) AIOPhish          [ All-In-One Phishing Tool ]"
echo -e "7) MaskPhish         [ URL Masking Tool ]"
echo -e "8) I-See-You         [ Location Tracker Phishing ]"
echo -e "9) NPhish            [ Next-Gen Phishing Framework ]"
echo -e "10) CamPhish         [ Camera Access via Link ]"
echo -e "11) SocialFish       [ Phishing Framework with GUI ]"
echo -e "0) Back to Main Menu"


