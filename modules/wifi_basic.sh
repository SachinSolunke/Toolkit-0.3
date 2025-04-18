#!/bin/bash
source functions/banner.sh
show_banner "WiFi Hacking (Basic / Non-Root)"

echo -e "\e[1;32m[+] Initializing WiFi Tools (Non-Root)...\e[0m"
sleep 1

echo -e "\n\e[1;36mAvailable Tools:\e[0m"
echo -e "1) WiFiPhisher (Simulated)     [Fake Access Point Phishing]"
echo -e "2) PixieWPS Explainer          [WPS attack theory & setup]"
echo -e "3) Wifite-ng Guide             [Offline scan & attack guide]"
echo -e "4) Network Scan Tools          [Detect nearby WiFi networks]"
echo -e "0) Back to Main Menu"

read -p "Choose an option: " choice
case $choice in
  1)
    echo -e "\e[1;35m[!] Note: Real WiFiPhisher requires root & monitor mode.\e[0m"
    echo -e "\e[1;33m[+] Showing simulation interface...\e[0m"
    sleep 2
    echo -e "\n\e[1;36m[SIMULATION] Starting fake access point phishing...\e[0m"
    echo -e "SSID: Free_WiFi\nCaptive Portal: Custom Login Page"
    ;;
  2)
    echo -e "\e[1;36m[+] PixieWPS is used with Reaver for WPS attacks."
    echo -e "    This tool is *theoretical only* for non-root mode.\e[0m"
    ;;
  3)
    echo -e "\e[1;36m[+] Wifite-ng works with root & wlan adapter."
    echo -e "    But here's a local guide to understand attack logic.\e[0m"
    ;;
  4)
    pkg install nmap -y
    nmap -sn 192.168.1.0/24
    ;;
  0)
    echo -e "\e[1;31mReturning to main menu...\e[0m"
    ;;
  *)
    echo -e "\e[1;31mInvalid option. Try again.\e[0m"
    ;;
esac
