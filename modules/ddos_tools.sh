#!/bin/bash
clear
echo -e "\e[1;36m[ DDoS & Flooding Tools - Overwhelm Networks & Services ]\e[0m"
echo -e "\e[1;34mThese tools simulate denial-of-service attacks for stress testing and defense.\e[0m"
echo
echo -e "\e[1;32m[1] Slowloris\e[0m          - Basic HTTP DoS attack"
echo -e "\e[1;32m[2] GoldenEye\e[0m          - Layer 7 (HTTP) DoS tester"
echo -e "\e[1;32m[3] PyDDoser\e[0m           - Python-based DDoS tool"
echo -e "\e[1;32m[4] Hammer\e[0m             - High-speed DDoS script"
echo -e "\e[1;32m[5] Xerxes\e[0m             - Strong Layer 4 DoS tool"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Select a DDoS tool: " ddos_choice

case $ddos_choice in
    1) git clone https://github.com/gkbrk/slowloris ;;
    2) git clone https://github.com/jseidl/GoldenEye ;;
    3) git clone https://github.com/The404Hacking/PyDDoser ;;
    4) git clone https://github.com/cyweb/hammer ;;
    5) git clone https://github.com/Zerxesz/Xerxes ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
