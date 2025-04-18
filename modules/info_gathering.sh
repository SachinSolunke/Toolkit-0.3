#!/bin/bash

show_tool_info() {
    TOOL=$1
    VERSION=$2
    AUTHOR=$3
    GITHUB=$4
    YOUTUBE=$5
    TELEGRAM=$6

    clear
    echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo -e "\e[1;32mTool       :\e[0m $TOOL"
    echo -e "\e[1;32mVersion    :\e[0m $VERSION"
    echo -e "\e[1;32mAuthor     :\e[0m $AUTHOR"
    echo -e "\e[1;32mGitHub     :\e[0m $GITHUB"
    echo -e "\e[1;32mYouTube    :\e[0m $YOUTUBE"
    echo -e "\e[1;32mTelegram   :\e[0m $TELEGRAM"
    echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    sleep 2
}

run_tool() {
    TOOL_NAME=$1
    GIT_URL=$2
    RUN_CMD=$3
    FOLDER_NAME=$4

    echo -e "\n\e[1;34m[~] Cloning $TOOL_NAME...\e[0m"
    if git clone "$GIT_URL"; then
        cd "$FOLDER_NAME" || exit
        echo -e "\e[1;32m[✔] Running $TOOL_NAME...\e[0m"
        eval "$RUN_CMD"
        cd ..  # Back to main directory after use
    else
        echo -e "\e[1;31m[✘] Failed to clone $TOOL_NAME. Check your internet connection.\e[0m"
    fi

    read -p $'\n\e[1;35m[↩] Press Enter to return to Info Gathering Menu...\e[0m'
}

while true; do
    clear
    echo -e "\e[1;32m[+] Information Gathering Tools Loaded...\e[0m"
    echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    echo -e "  \e[1;33m[1] AstraNmap        \e[0m - Advanced Nmap Wrapper"
    echo -e "  \e[1;33m[2] OSIF             \e[0m - Facebook Info Grabber"
    echo -e "  \e[1;33m[3] Red Hawk         \e[0m - Website Scanner"
    echo -e "  \e[1;33m[4] ReconDog         \e[0m - All-in-One Info Tool"
    echo -e "  \e[1;33m[5] D-TECT           \e[0m - Vulnerability Scanner"
    echo -e "  \e[1;31m[0] Back to Main Menu\e[0m"
    echo -e "\e[1;36m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\e[0m"
    read -p $'\e[1;32mChoose a tool:\e[0m ' choice

    case $choice in
        1)
            run_tool "AstraNmap" "https://github.com/Gameye98/AstraNmap.git" "python2 astra.py" "AstraNmap"
            ;;
        2)
            run_tool "OSIF" "https://github.com/ciku370/OSIF.git" "python2 osif.py" "OSIF"
            ;;
        3)
            run_tool "Red Hawk" "https://github.com/Tuhinshubhra/RED_HAWK.git" "php rhawk.php" "RED_HAWK"
            ;;
        4)
            run_tool "ReconDog" "https://github.com/s0md3v/ReconDog.git" "python2 dog.py" "ReconDog"
            ;;
        5)
            run_tool "D-TECT" "https://github.com/shawarkhanethicalhacker/D-TECT-1.git" "python2 d-tect.py" "D-TECT-1"
            ;;
        6)
          show_tool_info "Seeker" "3.0" "thewhiteh4t" "https://github.com/thewhiteh4t/seeker" "YourYT" "YourTelegram"
          pkg install -y git python php openssh
          git clone https://github.com/thewhiteh4t/seeker
          cd seeker && bash termux-install.sh
          python seeker.py
          cd ..
            ;;
        7)
          show_tool_info "ReconDog" "1.1" "UltimateHackers" "https://github.com/UltimateHackers/ReconDog" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/UltimateHackers/ReconDog
          cd ReconDog && python2 dog.py
          cd ..
           ;;
        8)
          show_tool_info "D-Tech" "1.0" "D-Tech" "https://github.com/shawarkhanethicalhacker/D-TECT-1" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/shawarkhanethicalhacker/D-TECT-1
          cd D-TECT-1 && python2 d-tect.py
          cd ..
           ;;

        9)
          show_tool_info "IpHack" "1.0" "NoobHackers" "https://github.com/noob-hackers/ip-tracker" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/noob-hackers/ip-tracker
          cd ip-tracker && bash ip-tracker.sh
          cd ..
          ;;

        10)
          show_tool_info "Nikto" "2.5.0" "Sullo" "https://github.com/sullo/nikto" "YourYT" "YourTelegram"
          pkg install -y git perl
          git clone https://github.com/sullo/nikto
          cd nikto && perl nikto.pl
          cd ..
          ;;

        11)
          show_tool_info "iSMTP" "1.0" "defaultname" "https://github.com/makiaveli/ismtp" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/makiaveli/ismtp
          cd ismtp && python ismtp.py
          cd ..
          ;;

        12)
          show_tool_info "RouterSploit" "3.4" "threat9" "https://github.com/threat9/routersploit" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/threat9/routersploit
          cd routersploit && pip install -r requirements.txt
          python rsf.py
          cd ..
          ;;

        13)
          show_tool_info "Commix" "latest" "commixproject" "https://github.com/commixproject/commix" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/commixproject/commix
          cd commix && python commix.py
          cd ..
          ;;

        14)
          show_tool_info "TxTool" "1.5" "Toxic-Noob" "https://github.com/k4m4/kickthemout" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/k4m4/kickthemout
          cd kickthemout && pip install -r requirements.txt
          python kickthemout.py
          cd ..
          ;;

        15)
          show_tool_info "XAttacker" "2023" "Moham3dRiahi" "https://github.com/Moham3dRiahi/XAttacker" "YourYT" "YourTelegram"
          pkg install -y git perl
          git clone https://github.com/Moham3dRiahi/XAttacker
          cd XAttacker && perl XAttacker.pl
          cd ..
          ;;

        16)
          show_tool_info "FIM" "latest" "PowerScript" "https://github.com/PowerScript/FIM" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/PowerScript/FIM
          cd FIM && python fim.py
          cd ..
          ;;

        17)
          show_tool_info "Hack-Gmail" "1.0" "linuxchoice" "https://github.com/thelinuxchoice/hackgmail" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/thelinuxchoice/hackgmail
          cd hackgmail && bash hackgmail.sh
          cd ..
          ;;

        18)
          show_tool_info "KnockMail" "2.0" "4w4k3" "https://github.com/4w4k3/KnockMail" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/4w4k3/KnockMail
          cd KnockMail && pip install -r requirements.txt
          python knockmail.py
          cd ..
          ;;

        19)
          show_tool_info "PwnedOrNot" "1.3" "thewhiteh4t" "https://github.com/thewhiteh4t/pwnedOrNot" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/thewhiteh4t/pwnedOrNot
          cd pwnedOrNot && pip install -r requirements.txt
          python pwnedornot.py
          cd ..
          ;;

        20)
          show_tool_info "EmailPySpam" "1.0" "defaultname" "https://github.com/Moham3dRiahi/Email-Spammer" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Moham3dRiahi/Email-Spammer
          cd Email-Spammer && python Email-Spammer.py
          cd ..
          ;;

        21)
          show_tool_info "Gmail-Hack" "1.0" "ToxicSec" "https://github.com/ToxicSec/Gmail-Hack" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/ToxicSec/Gmail-Hack
          cd Gmail-Hack && python gmail-hack.py
          cd ..
          ;;

        22)
          show_tool_info "Email-Spammer" "2.0" "xHak3r" "https://github.com/xHak3r/email-spammer" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/xHak3r/email-spammer
          cd email-spammer && python spammer.py
          cd ..
          ;;

        23)
          show_tool_info "AdminHack" "latest" "tuhinshubhra" "https://github.com/Tuhinshubhra/admin-hack" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Tuhinshubhra/admin-hack
          cd admin-hack && python admin-hack.py
          cd ..
          ;;

        24)
          show_tool_info "TakeOver" "1.0" "Reubuh" "https://github.com/Reubuh/TakeOver" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Reubuh/TakeOver
          cd TakeOver && python take_over.py
          cd ..
          ;;

        25)
          show_tool_info "Blazy" "1.0" "TheBiggerGuy" "https://github.com/TheBiggerGuy/Blazy" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/TheBiggerGuy/Blazy
          cd Blazy && python blazy.py
          cd ..
          ;;

        26)
          show_tool_info "SqlMap" "latest" "sqlmapproject" "https://github.com/sqlmapproject/sqlmap" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/sqlmapproject/sqlmap
          cd sqlmap && python sqlmap.py
          cd ..
          ;;

        27)
          show_tool_info "WebSploit" "latest" "r00t-3xp10it" "https://github.com/r00t-3xp10it/WebSploit" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/r00t-3xp10it/WebSploit
          cd WebSploit && python websploit.py
          cd ..
          ;;

        28)
          show_tool_info "SH33LL" "latest" "ShellMaestro" "https://github.com/ShellMaestro/SH33LL" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/ShellMaestro/SH33LL
          cd SH33LL && python sh33ll.py
          cd ..
          ;;
        29)
          show_tool_info "SqlMate" "1.0" "mlabouardy" "https://github.com/mlabouardy/SqlMate" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/mlabouardy/SqlMate
          cd SqlMate && python sqlmate.py
          cd ..
          ;;

        30)
          show_tool_info "PyDDoser" "latest" "mr-p0c0" "https://github.com/mr-p0c0/PyDDoser" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/mr-p0c0/PyDDoser
          cd PyDDoser && python ddoser.py
          cd ..
          ;;

        31)
          show_tool_info "Ultra-DDos" "latest" "bl4cksc0rpio" "https://github.com/bl4cksc0rpio/Ultra-DDos" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/bl4cksc0rpio/Ultra-DDos
          cd Ultra-DDos && python ddos.py
          cd ..
          ;;

        32)
          show_tool_info "WhatWeb" "latest" "urbanadventurer" "https://github.com/urbanadventurer/WhatWeb" "YourYT" "YourTelegram"
          pkg install -y git ruby
          git clone https://github.com/urbanadventurer/WhatWeb
          cd WhatWeb && ruby whatweb
          cd ..
          ;;

        33)
          show_tool_info "Wfuzz" "latest" "xm33x" "https://github.com/xm33x/Wfuzz" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/xm33x/Wfuzz
          cd Wfuzz && python wfuzz.py
          cd ..
          ;;

        34)
          show_tool_info "Cam-Hackers" "1.0" "Unknown" "https://github.com/Unknown/Cam-Hackers" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Unknown/Cam-Hackers
          cd Cam-Hackers && python camhack.py
          cd ..
          ;;

        35)
          show_tool_info "Grabcam" "1.1" "grabcam" "https://github.com/grabcam/grabcam" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/grabcam/grabcam
          cd grabcam && python grabcam.py
          cd ..
          ;;

        36)
          show_tool_info "CamHack" "latest" "CamHack" "https://github.com/CamHack/CamHack" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/CamHack/CamHack
          cd CamHack && python camhack.py
          cd ..
          ;;
        37)
          show_tool_info "PyShell" "1.0" "PyShellDev" "https://github.com/PyShellDev/PyShell" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/PyShellDev/PyShell
          cd PyShell && python pyshell.py
          cd ..
          ;;

        38)
          show_tool_info "WishFish" "1.0" "WishFish" "https://github.com/WishFish/WishFish" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/WishFish/WishFish
          cd WishFish && python wishfish.py
          cd ..
          ;;

        39)
          show_tool_info "Debinject" "latest" "Debinject" "https://github.com/Debinject/Debinject" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Debinject/Debinject
          cd Debinject && python debinject.py
          cd ..
          ;;

        40)
          show_tool_info "Vitus2.0" "latest" "Vitus" "https://github.com/Vitus/Vitus2.0" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Vitus/Vitus2.0
          cd Vitus2.0 && python vitus.py
          cd ..
          ;;

        41)
          show_tool_info "Infect" "latest" "Infect" "https://github.com/Infect/Infect" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Infect/Infect
          cd Infect && python infect.py
          cd ..
          ;;

        42)
          show_tool_info "Facebook-BruteForce" "latest" "Facebook-BruteForce" "https://github.com/facebook/facebook-bruteforce" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/facebook/facebook-bruteforce
          cd facebook-bruteforce && python brute.py
          cd ..
          ;;

        43)
          show_tool_info "Sherlock" "latest" "sherlock-project" "https://github.com/sherlock-project/sherlock" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/sherlock-project/sherlock
          cd sherlock && python sherlock.py
          cd ..
          ;;

        44)
          show_tool_info "UserFinder" "latest" "UserFinder" "https://github.com/UserFinder/UserFinder" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/UserFinder/UserFinder
          cd UserFinder && python userfinder.py
          cd ..
          ;;

        45)
          show_tool_info "SMS-Bomber-300-Free" "1.0" "Bomber300" "https://github.com/Bomber300/SMS-Bomber-300-Free" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Bomber300/SMS-Bomber-300-Free
          cd SMS-Bomber-300-Free && python bomber.py
          cd ..
          ;;

        46)
          show_tool_info "AresBomb" "latest" "AresBomb" "https://github.com/AresBomb/AresBomb" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/AresBomb/AresBomb
          cd AresBomb && python ares.py
          cd ..
          ;;

        47)
          show_tool_info "Anon-SMS" "latest" "aniketstark/Anon-SMS" "https://github.com/aniketstark/Anon-SMS" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/aniketstark/Anon-SMS
          cd Anon-SMS && bash Anon-SMS.sh
          cd ..
          ;;

        48)
          show_tool_info "Spymer" "latest" "Spymer" "https://github.com/Spymer/Spymer" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Spymer/Spymer
          cd Spymer && python spymer.py
          cd ..
          ;;

        49)
          show_tool_info "TBomb" "v3.0" "TheAn0n0mus1" "https://github.com/TheAn0n0mus1/TBomb" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/TheAn0n0mus1/TBomb
          cd TBomb && bash TBomb.sh
          cd ..
          ;;

        50)
          show_tool_info "anonymousSMS" "latest" "MaxSecurity" "https://github.com/MaxSecurity/anonymousSMS" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/MaxSecurity/anonymousSMS
          cd anonymousSMS && python sms.py
          cd ..
          ;;

        51)
          show_tool_info "Rang3r" "1.0" "Rang3r" "https://github.com/floriankunushevci/Rang3r" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/floriankunushevci/Rang3r
          cd Rang3r && python3 rang3r.py
          cd ..
          ;;

        52)
          show_tool_info "TM-Scanner" "latest" "TM-scanner" "https://github.com/TechnicalMujeeb/TM-scanner" "YourYT" "YourTelegram"
          pkg install -y git
          git clone https://github.com/TechnicalMujeeb/TM-scanner
          cd TM-scanner && bash tm-scanner.sh
          cd ..
          ;;

       53)
          show_tool_info "DarkDump" "1.0" "darkdump" "https://github.com/josh0xA/darkdump" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/josh0xA/darkdump
          cd darkdump && python darkdump.py
          cd ..
          ;;

        54)
          show_tool_info "Zphisher" "2.5" "htr-tech" "https://github.com/htr-tech/zphisher" "YourYT" "YourTelegram"
          pkg install -y git bash
          git clone https://github.com/htr-tech/zphisher
          cd zphisher && bash zphisher.sh
          cd ..
          ;;

        55)
          show_tool_info "ShellPhish" "1.0" "ShellPhish" "https://github.com/suljot/shellphish" "YourYT" "YourTelegram"
          pkg install -y git
          git clone https://github.com/suljot/shellphish
          cd shellphish && bash shellphish.sh
          cd ..
          ;;

        56)
          show_tool_info "Saycheese" "1.2" "thewhiteh4t" "https://github.com/thewhiteh4t/saycheese" "YourYT" "YourTelegram"
          pkg install -y git php openssh
          git clone https://github.com/thewhiteh4t/saycheese
          cd saycheese && bash saycheese.sh
          cd ..
          ;;

        57)
          show_tool_info "MaskPhish" "1.0" "jaykali" "https://github.com/jaykali/maskphish" "YourYT" "YourTelegram"
          pkg install -y git bash
          git clone https://github.com/jaykali/maskphish
          cd maskphish && bash maskphish.sh
          cd ..
          ;;

        58)
          show_tool_info "AIOPhish" "latest" "M4cs" "https://github.com/M4cs/AIOPhish" "YourYT" "YourTelegram"
          pkg install -y git bash php
          git clone https://github.com/M4cs/AIOPhish
          cd AIOPhish && bash aiophish.sh
          cd ..
          ;;

        59)
          show_tool_info "I See You" "1.0" "TechnicalMujeeb" "https://github.com/TechnicalMujeeb/SeeYou" "YourYT" "YourTelegram"
          pkg install -y git
          git clone https://github.com/TechnicalMujeeb/SeeYou
          cd SeeYou && bash SeeYou.sh
          cd ..
          ;;

        60)
          show_tool_info "HiddenEye" "8.5" "DarkSecDevelopers" "https://github.com/DarkSecDevelopers/HiddenEye" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/DarkSecDevelopers/HiddenEye
          cd HiddenEye && python3 HiddenEye.py
          cd ..
          ;;

        61)
          show_tool_info "BlackEye" "1.5" "thelinuxchoice" "https://github.com/thelinuxchoice/blackeye" "YourYT" "YourTelegram"
          pkg install -y git php
          git clone https://github.com/thelinuxchoice/blackeye
          cd blackeye && bash blackeye.sh
          cd ..
          ;;

        62)
          show_tool_info "NPhish" "1.0" "NoobHackers" "https://github.com/noob-hackers/nphish" "YourYT" "YourTelegram"
          pkg install -y git
          git clone https://github.com/noob-hackers/nphish
          cd nphish && bash nphish.sh
          cd ..
          ;;

        63)
          show_tool_info "Hasher" "1.0" "hash3r" "https://github.com/CybernetiX-S3C/Hash3r" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/CybernetiX-S3C/Hash3r
          cd Hash3r && python3 hash3r.py
          cd ..
          ;;

        64)
          show_tool_info "HasherDoid" "1.0" "Ethical-H4ck3r" "https://github.com/ethicalh4ck3r/Hasherdoid" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/ethicalh4ck3r/Hasherdoid
          cd Hasherdoid && python hasherdoid.py
          cd ..
          ;;

        65)
          show_tool_info "Hash Generator" "1.0" "BlackCoderCrush" "https://github.com/BlackCoderCrush/Hash-Generator" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/BlackCoderCrush/Hash-Generator
          cd Hash-Generator && python3 hashgenerator.py
          cd ..
          ;;

        66)
          show_tool_info "Hash Buster" "3.0" "UltimateHackers" "https://github.com/UltimateHackers/Hash-Buster" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/UltimateHackers/Hash-Buster
          cd Hash-Buster && python3 hash.py
          cd ..
          ;;

        67)
          show_tool_info "WlCreator" "1.0" "Rajkumrdusad" "https://github.com/Rajkumrdusad/Wl-Creator" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Rajkumrdusad/Wl-Creator
          cd Wl-Creator && python3 wlcreator.py
          cd ..
          ;;

        68)
          show_tool_info "Goblin Word Generator" "1.1" "UndeadSec" "https://github.com/UndeadSec/GoblinWordGenerator" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/UndeadSec/GoblinWordGenerator
          cd GoblinWordGenerator && python goblin.py
          cd ..
          ;;

        69)
          show_tool_info "SMWYG" "1.0" "0xbug" "https://github.com/0xbug/SMWYG" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/0xbug/SMWYG
          cd SMWYG && python smwyg.py
          cd ..
          ;;

        70)
          show_tool_info "XSSCon" "1.2" "faizanx" "https://github.com/faizanx/XSSCon" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/faizanx/XSSCon
          cd XSSCon && python3 xsscon.py
          cd ..
          ;;

        71)
          show_tool_info "XanXSS" "2.0" "s0md3v" "https://github.com/s0md3v/xanxss" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/s0md3v/xanxss
          cd xanxss && python3 xanxss.py
          cd ..
          ;;

        72)
          show_tool_info "XSStrike" "3.1" "s0md3v" "https://github.com/s0md3v/XSStrike" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/s0md3v/XSStrike
          cd XSStrike && python3 xsstrike.py
          cd ..
          ;;

        73)
          show_tool_info "Intersect 2.5" "2.5" "hacksysteam" "https://github.com/hacksysteam/intersect" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/hacksysteam/intersect
          cd intersect && python intersect.py
          cd ..
          ;;

        74)
          show_tool_info "Free-Proxy" "1.0" "mrhm-dev" "https://github.com/mrhm-dev/free-proxy-list" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/mrhm-dev/free-proxy-list
          cd free-proxy-list && python3 proxy.py
          cd ..
          ;;

        75)
          show_tool_info "Sublist3r" "1.1" "aboul3la" "https://github.com/aboul3la/Sublist3r" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/aboul3la/Sublist3r
          cd Sublist3r && python sublist3r.py -h
          cd ..
          ;;

        76)
          show_tool_info "Photon" "1.0" "s0md3v" "https://github.com/s0md3v/Photon" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/s0md3v/Photon
          cd Photon && python3 photon.py -h
          cd ..
          ;;

        77)
          show_tool_info "theHarvester" "4.0" "laramies" "https://github.com/laramies/theHarvester" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/laramies/theHarvester
          cd theHarvester && python3 theHarvester.py -h
          cd ..
          ;;

        78)
          show_tool_info "Infoga" "3.0" "m4ll0k" "https://github.com/m4ll0k/Infoga" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/m4ll0k/Infoga
          cd Infoga && python infoga.py --help
          cd ..
          ;;

        79)
          show_tool_info "Cupp" "0.1" "Mebus" "https://github.com/Mebus/cupp" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Mebus/cupp
          cd cupp && python3 cupp.py
          cd ..
          ;;

        80)
          show_tool_info "Crips" "1.0" "Manisso" "https://github.com/Manisso/Crips" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Manisso/Crips
          cd Crips && python2 crips.py
          cd ..
          ;;

        81)
          show_tool_info "FBI" "1.0" "FBI-Team" "https://github.com/xHak9x/fbi" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/xHak9x/fbi
          cd fbi && python2 fbi.py
          cd ..
          ;;

        82)
          show_tool_info "Th3Inspector" "1.2" "Moham3dRiahi" "https://github.com/Moham3dRiahi/Th3inspector" "YourYT" "YourTelegram"
          pkg install -y git php
          git clone https://github.com/Moham3dRiahi/Th3inspector
          cd Th3inspector && chmod +x install.sh && bash install.sh
          cd ..
          ;;

       83)
          show_tool_info "KnockMail" "1.0" "4w4k3" "https://github.com/4w4k3/KnockMail" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/4w4k3/KnockMail
          cd KnockMail && python KnockMail.py
          cd ..
          ;;

        84)
          show_tool_info "Httprobe" "1.0" "tomnomnom" "https://github.com/tomnomnom/httprobe" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/tomnomnom/httprobe@latest
          echo -e "\n\e[1;32m[✔] Run 'httprobe' from anywhere!\e[0m"
          ;;

        85)
          show_tool_info "FFUF" "1.4" "ffuf" "https://github.com/ffuf/ffuf" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/ffuf/ffuf/v2@latest
          echo -e "\n\e[1;32m[✔] Run 'ffuf' from anywhere!\e[0m"
          ;;

        86)
          show_tool_info "AssetFinder" "0.1" "tomnomnom" "https://github.com/tomnomnom/assetfinder" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/tomnomnom/assetfinder@latest
          echo -e "\n\e[1;32m[✔] Run 'assetfinder' from anywhere!\e[0m"
          ;;

        87)
          show_tool_info "Waybackurls" "0.2" "tomnomnom" "https://github.com/tomnomnom/waybackurls" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/tomnomnom/waybackurls@latest
          echo -e "\n\e[1;32m[✔] Run 'waybackurls' from anywhere!\e[0m"
          ;;

        88)
          show_tool_info "Dalfox" "2.7" "hahwul" "https://github.com/hahwul/dalfox" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/hahwul/dalfox/v2@latest
          echo -e "\n\e[1;32m[✔] Run 'dalfox' from anywhere!\e[0m"
          ;;

        89)
          show_tool_info "Dirsearch" "0.4" "maurosoria" "https://github.com/maurosoria/dirsearch" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/maurosoria/dirsearch
          cd dirsearch && python3 dirsearch.py -h
          cd ..
          ;;

        90)
          show_tool_info "CMSeeK" "1.0" "Tuhinshubhra" "https://github.com/Tuhinshubhra/CMSeeK" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/Tuhinshubhra/CMSeeK
          cd CMSeeK && python3 cmseek.py
          cd ..
          ;;

        91)
          show_tool_info "Photon" "1.3" "s0md3v" "https://github.com/s0md3v/Photon" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/s0md3v/Photon
          cd Photon && python3 photon.py -h
          cd ..
          ;;

        92)
          show_tool_info "Censys Subdomain Finder" "1.0" "aboul3la" "https://github.com/christophetd/censys-subdomain-finder" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/christophetd/censys-subdomain-finder
          cd censys-subdomain-finder && python3 censys-subdomain-finder.py
          cd ..
          ;;

        93)
          show_tool_info "Amass" "3.19" "OWASP" "https://github.com/owasp-amass/amass" "YourYT" "YourTelegram"
          pkg install -y amass
          echo -e "\n\e[1;32m[✔] Run 'amass' from anywhere!\e[0m"
          ;;

        94)
          show_tool_info "Subfinder" "2.5" "projectdiscovery" "https://github.com/projectdiscovery/subfinder" "YourYT" "YourTelegram"
          pkg install -y golang
          go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest
          echo -e "\n\e[1;32m[✔] Run 'subfinder' from anywhere!\e[0m"
          ;;

        95)
          show_tool_info "Aquatone" "1.7" "michenriksen" "https://github.com/michenriksen/aquatone" "YourYT" "YourTelegram"
          pkg install -y wget unzip
          wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
          unzip aquatone_linux_amd64_1.7.0.zip
          chmod +x aquatone
          mv aquatone $PREFIX/bin/
          echo -e "\n\e[1;32m[✔] Run 'aquatone' from anywhere!\e[0m"
          ;;

        96)
          show_tool_info "SpiderFoot" "4.0" "smicallef" "https://github.com/smicallef/spiderfoot" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/smicallef/spiderfoot
          cd spiderfoot && pip install -r requirements.txt && python3 sf.py
          cd ..
          ;;

        97)
          show_tool_info "Netdiscover" "0.7" "AlucarD" "https://github.com/alucard21/Netdiscover" "YourYT" "YourTelegram"
          apt install -y netdiscover
          echo -e "\n\e[1;32m[✔] Run 'netdiscover' from anywhere!\e[0m"
          ;;

        98)
          show_tool_info "Creepy" "1.4" "ilektrojohn" "https://github.com/ilektrojohn/creepy" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/ilektrojohn/creepy
          cd creepy && python creepy.py
          cd ..
          ;;

        99)
          show_tool_info "theHarvester" "3.0" "laramies" "https://github.com/laramies/theHarvester" "YourYT" "YourTelegram"
          pkg install -y git python
          git clone https://github.com/laramies/theHarvester
          cd theHarvester && pip install -r requirements.txt && python3 theHarvester.py
          cd ..
          ;;

        100)
          show_tool_info "Findomain" "8.2" "Findomain" "https://github.com/findomain/findomain" "YourYT" "YourTelegram"
          pkg install -y wget unzip
          wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux.zip
          unzip findomain-linux.zip
          chmod +x findomain
          mv findomain $PREFIX/bin/
          echo -e "\n\e[1;32m[✔] Run 'findomain' from anywhere!\e[0m"
          ;;

        0)
            echo -e "\e[1;35mReturning to Main Menu...\e[0m"
            sleep 1
            break
            ;;
        *)
            echo -e "\e[1;31mInvalid option. Try again.\e[0m"
            sleep 1
            ;;
    esac
done
