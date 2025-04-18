#!/bin/bash

# Tool Info & Help Module

show_tool_info() {
  clear
  echo -e "\e[1;35mTool Information & Help\e[0m"
  echo -e "\nChoose a tool to get information about it:"

  # List of tools
  tools=("Info Gathering Tools" "Phishing Tools" "Exploitation Tools" "Password Cracking" "Network Hacking")
  
  # Display tool categories
  for i in "${!tools[@]}"; do
    echo -e "\e[1;36m[$((i+1))]\e[0m ${tools[$i]}"
  done

  read -p "Enter option (1-5): " tool_choice

  case $tool_choice in
    1) echo -e "\e[1;32mInfo Gathering Tools:\e[0m - These tools help gather information about a target system, such as IP addresses, open ports, etc."; ;;
    2) echo -e "\e[1;32mPhishing Tools:\e[0m - These tools help create phishing campaigns to steal login credentials or other sensitive data."; ;;
    3) echo -e "\e[1;32mExploitation Tools:\e[0m - These tools help identify and exploit vulnerabilities in a system."; ;;
    4) echo -e "\e[1;32mPassword Cracking Tools:\e[0m - These tools assist in cracking password hashes using brute force, dictionary, or rainbow table methods."; ;;
    5) echo -e "\e[1;32mNetwork Hacking Tools:\e[0m - These tools help in attacking and monitoring networks, including Wi-Fi cracking and man-in-the-middle attacks."; ;;
    *) echo -e "\e[1;31mInvalid option!\e[0m" ;;
  esac
  read -p "Press Enter to return to the main menu..."  # Return to main menu
}

# Run the function
show_tool_info
