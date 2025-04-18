#!/bin/bash
clear
echo -e "\e[1;36m[ Voice Phishing & Spoofing Tools ]\e[0m"
echo -e "\e[1;34mThese tools help you explore caller ID spoofing, fake calls, and voice-based phishing.\e[0m"
echo
echo -e "\e[1;32m[1] Spoof Call\e[0m          - Fake caller ID calls"
echo -e "\e[1;32m[2] Evil-Droid Voice\e[0m    - Generate malicious voice payloads"
echo -e "\e[1;32m[3] Nexmo CLI Spoof\e[0m     - Spoof SMS & Calls using Nexmo API"
echo -e "\e[1;32m[4] Twilio Caller Spoof\e[0m - Fake call using Twilio"
echo -e "\e[1;32m[5] HiddenCall Trick\e[0m    - Tricks for hiding your number"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool to explore: " voice_choice

case $voice_choice in
    1) echo -e "\n\e[1;34mTry using online spoofing services like:\e[0m https://www.spoofmyphone.com" ;;
    2) git clone https://github.com/M4sc3r4n0/Evil-Droid ;;
    3) echo -e "\n\e[1;34mVisit:\e[0m https://developer.vonage.com/ for Nexmo CLI setup." ;;
    4) echo -e "\n\e[1;34mVisit:\e[0m https://www.twilio.com/console/voice for API setup." ;;
    5) echo -e "\n\e[1;32mTrick:\e[0m Prefix number with #31# before calling (GSM networks only)" ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
