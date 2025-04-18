#!/bin/bash
clear
echo -e "\e[1;32m[+] Loading Wireless Hacking (Non-Root Mode) Tools...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) WiFi Info Scanner            [Check connected WiFi details]"
echo -e "2) Nearby SSID Scanner         [List visible WiFi networks]"
echo -e "3) Fake MAC Changer (Demo)     [MAC spoofing concept demo]"
echo -e "4) Wordlist Generator          [Custom WiFi password list]"
echo -e "5) Wifite Recon Only (Demo)    [Passive scan without crack]"
echo -e "6) Beginner Guide (Must Read)  [Concepts + Videos + Next Steps]"
echo -e "0) Back to Main Menu"

read -p $'\n\033[1;33mChoose an option: \033[0m' choice

case $choice in
  1)
    echo -e "\n\e[1;35m[+] Connected WiFi Info:\e[0m"
    termux-wifi-connectioninfo | jq .
    ;;
  2)
    echo -e "\n\e[1;35m[+] Scanning nearby WiFi networks...\e[0m"
    termux-wifi-scaninfo | jq .
    ;;
  3)
    echo -e "\n\e[1;35m[+] Simulating MAC Address Change...\e[0m"
    echo "Original MAC: 02:00:00:00:00:00"
    echo "New Fake MAC: 9A:34:2B:AA:CD:91"
    echo -e "\e[1;32mThis is a demo. Root required for real MAC spoofing.\e[0m"
    ;;
  4)
    read -p $'\e[1;33mEnter base word (e.g. schoolname123): \e[0m' base
    crunch 8 12 -t $base@@@@ -o wordlist.txt
    echo -e "\e[1;32mWordlist saved as 'wordlist.txt'\e[0m"
    ;;
  5)
    echo -e "\n\e[1;35m[+] Launching Wifite in Recon-only Mode (non-root)...\e[0m"
    echo "Simulated Scan - No Cracking Performed"
    sleep 2
    echo -e "\e[1;34m[WiFi 1]  TP-Link_5GHz_1234  | WPA2 | Signal: -45dBm\e[0m"
    echo -e "\e[1;34m[WiFi 2]  JioFiber_XYZ       | WPA  | Signal: -72dBm\e[0m"
    ;;
  6)
    clear
    echo -e "\e[1;36m================ Beginner Guide: Wireless Hacking =================\e[0m"
    echo -e "\e[1;32mWhat you'll learn:\e[0m"
    echo -e " - What is WiFi hacking and how it works"
    echo -e " - Monitor Mode & Packet Injection (Root Only)"
    echo -e " - What is BSSID, ESSID, Channel"
    echo -e " - Why dictionary attacks are used"
    echo -e " - How to practice safely without illegal activity"

    echo -e "\n\e[1;33mRecommended YouTube Videos:\e[0m"
    echo " - NetworkChuck: https://youtu.be/Z_yjG3IQxzE"
    echo " - HackerSploit: https://youtu.be/tPNbq9W_qms"

    echo -e "\n\e[1;34mNext Steps:\e[0m"
    echo " - Learn Kali Nethunter for advanced mode"
    echo " - Practice with rooted devices or PC VMs"
    echo -e "\n\e[1;32mYou’re on the right path, Annu. Learn. Practice. Level Up.\e[0m"
    echo -e "\e[1;35mSignature: Annu & AI God\e[0m"
    read -p $'\nPress Enter to return...'
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
