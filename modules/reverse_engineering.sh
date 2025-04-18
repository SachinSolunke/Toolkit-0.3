#!/bin/bash
clear
echo -e "\e[1;36m[ Reverse Engineering Tools - APK & Binary Analysis ]\e[0m"
echo -e "\e[1;34mBreak apart APKs, modify code, rebuild, and learn the inside of any Android app.\e[0m"
echo
echo -e "\e[1;32m[1] Apktool\e[0m             - Decompile & recompile APKs"
echo -e "\e[1;32m[2] JADX-GUI\e[0m            - Java source code viewer for APKs"
echo -e "\e[1;32m[3] Bytecode Viewer\e[0m     - Analyze compiled code"
echo -e "\e[1;32m[4] MobSF\e[0m               - Mobile Security Framework"
echo -e "\e[1;32m[5] ClassyShark\e[0m         - Explore Android APKs internals"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool: " re_choice

case $re_choice in
    1)
        pkg install -y apktool
        echo -e "\e[1;34mUsage:\e[0m apktool d app.apk -o out_dir"
        ;;
    2)
        echo -e "\n\e[1;34mInstall JADX GUI manually for Android or PC:\e[0m https://github.com/skylot/jadx"
        ;;
    3)
        echo -e "\n\e[1;34mUse Bytecode Viewer (Java-based):\e[0m https://github.com/Konloch/bytecode-viewer"
        ;;
    4)
        echo -e "\n\e[1;34mMobile Security Framework (MobSF):\e[0m https://github.com/MobSF/Mobile-Security-Framework-MobSF"
        ;;
    5)
        echo -e "\n\e[1;34mClassyShark APK tool:\e[0m https://github.com/google/classyshark"
        ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
