#!/bin/bash
clear
echo -e "\e[1;36m[ Deep Web Access & Anonymity Tools ]\e[0m"
echo -e "\e[1;34mExplore the darknet safely and anonymously with these tools.\e[0m"
echo
echo -e "\e[1;32m[1] Tor\e[0m               - Browse anonymously"
echo -e "\e[1;32m[2] ProxyChains\e[0m       - Route traffic through multiple proxies"
echo -e "\e[1;32m[3] Anonsurf\e[0m          - Force entire system through Tor"
echo -e "\e[1;32m[4] Torsocks\e[0m          - Use individual tools with Tor"
echo -e "\e[1;32m[5] Onion Search Engine\e[0m - Discover .onion links safely"
echo -e "\e[1;33m[0] Back\e[0m"
echo
read -p "Choose a tool to install or use: " deep_choice

case $deep_choice in
    1)
        pkg install tor -y
        echo -e "\e[1;34mStart Tor:\e[0m tor"
        ;;
    2)
        pkg install proxychains -y
        echo -e "\e[1;34mUse with:\e[0m proxychains curl example.com"
        ;;
    3)
        git clone https://github.com/Und3rf10w/kali-anonsurf
        ;;
    4)
        pkg install torsocks -y
        echo -e "\e[1;34mUse with:\e[0m torsocks curl example.com"
        ;;
    5)
        echo -e "\e[1;34mTry:\e[0m https://ahmia.fi/ or https://onionsearchengine.com"
        ;;
    0) exit ;;
    *) echo -e "\e[1;31mInvalid choice.\e[0m" ;;
esac
