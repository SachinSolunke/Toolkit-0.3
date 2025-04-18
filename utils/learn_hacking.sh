#!/bin/bash

# Learn Hacking Module

show_learn_hacking() {
  clear
  echo -e "\e[1;35mLearn Hacking - Tutorials\e[0m"
  echo -e "\nChoose a tutorial to begin:"

  # List of tutorials
  tutorials=("Introduction to Hacking" "Networking Basics" "Web Hacking" "Linux for Hackers" "Ethical Hacking Principles")
  
  # Display tutorial options
  for i in "${!tutorials[@]}"; do
    echo -e "\e[1;36m[$((i+1))]\e[0m ${tutorials[$i]}"
  done

  read -p "Enter option (1-5): " tutorial_choice

  case $tutorial_choice in
    1) echo -e "\e[1;32mIntroduction to Hacking:\e[0m - Learn the basics of hacking, its tools, and methodologies."; ;;
    2) echo -e "\e[1;32mNetworking Basics:\e[0m - Understand IP addresses, ports, and protocols. Learn to network like a pro."; ;;
    3) echo -e "\e[1;32mWeb Hacking:\e[0m - Learn the basics of exploiting web applications, including SQL Injection and XSS."; ;;
    4) echo -e "\e[1;32mLinux for Hackers:\e[0m - Learn Linux commands and tricks to become a more efficient hacker."; ;;
    5) echo -e "\e[1;32mEthical Hacking Principles:\e[0m - Understand the ethical side of hacking, responsible disclosure, and legal considerations."; ;;
    *) echo -e "\e[1;31mInvalid option!\e[0m" ;;
  esac
  read -p "Press Enter to return to the main menu..."  # Return to main menu
}

# Run the function
show_learn_hacking
