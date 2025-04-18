#!/bin/bash

clear

# Function to show a colorful banner with date/time
show_banner() {
    current_time=$(date "+%H:%M:%S") # Get current time
    current_date=$(date "+%A, %d %B %Y") # Get current date

    echo -e "\e[1;35m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓\e[0m"
    echo -e "\e[1;36m┃      Welcome to Sachin's Hacker Terminal      ┃\e[0m"
    echo -e "\e[1;33m┃       Current Time: \e[1;32m$current_time \e[1;33m┃\e[0m"
    echo -e "\e[1;33m┃       Current Date: \e[1;32m$current_date \e[1;33m┃\e[0m"
    echo -e "\e[1;35m┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛\e[0m"
}

# Typing effect to simulate text animation
typing_effect() {
    text="$1"
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.05
    done
    echo ""
}

# Function to show the options with colorful choices
show_options() {
    echo -e "\n\e[1;34mChoose a banner style:\e[0m"
    echo -e "\e[1;31m[1] Classic SACHIN Banner\e[0m"
    echo -e "\e[1;32m[2] Dragon Fire Banner\e[0m"
    echo -e "\e[1;33m[3] Skull Matrix Banner\e[0m"
    echo -e "\e[1;35m[4] Custom Text Banner\e[0m"
    echo -e "\e[1;36m[5] Surprise Banner! (Hidden Mode)\e[0m"
    echo -e "\e[1;31m[0] Back to Main Menu\e[0m"
}

# Classic Sachin banner with colorful font
classic_sachin_banner() {
    echo -e "\e[1;32m"
    typing_effect "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    typing_effect "┃            Welcome to SACHIN's Terminal        ┃"
    typing_effect "┃        Powered by Sachin & AI God            ┃"
    typing_effect "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo -e "\e[0m"
}

# Dragon Fire banner with colorful flame effect
dragon_fire_banner() {
    echo -e "\e[1;31m"
    typing_effect "🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
    typing_effect "🔥  Welcome to  🔥"
    typing_effect "🔥  Sachin's  🔥"
    typing_effect "🔥  Hack Zone 🔥"
    typing_effect "🔥🔥🔥🔥🔥🔥🔥🔥🔥🔥"
    echo -e "\e[0m"
}

# Skull Matrix banner with a unique font style
skull_matrix_banner() {
    echo -e "\e[1;37m"
    typing_effect "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
    typing_effect "▓▓▓  Welcome to   ▓▓▓"
    typing_effect "▓▓▓   Skull Matrix ▓▓▓"
    typing_effect "▓▓▓     By Sachin ▓▓▓"
    typing_effect "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
    echo -e "\e[0m"
}

# Custom banner with user input
custom_banner() {
    echo -e "\n\e[1;33mEnter your custom banner text:\e[0m"
    read -p "Banner Text: " banner_text
    typing_effect "\e[1;32m┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
    typing_effect "┃         $banner_text              ┃"
    typing_effect "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
    echo -e "\e[0m"
}

# Hidden banner with surprise mode
hidden_banner() {
    echo -e "\n\e[1;35m[Hidden Surprise Activated]\e[0m"
    sleep 1
    echo -e "\e[1;33mPrepare yourself for a secret hack mode...\e[0m"
    sleep 2
    typing_effect "\e[1;34m▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
    typing_effect "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
    typing_effect "▓▓▓  Welcome to the Ultimate Hacker Mode!   ▓▓▓"
    typing_effect "▓▓▓    Powered by Sachin & AI God             ▓▓▓"
    typing_effect "▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓"
    typing_effect "▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒"
    echo -e "\e[0m"
}

# Main menu loop
while true; do
    show_banner
    show_options

    read -p "Choose an option: " opt

    case $opt in
        1) classic_sachin_banner ;;
        2) dragon_fire_banner ;;
        3) skull_matrix_banner ;;
        4) custom_banner ;;
        5) hidden_banner ;;
        0) break ;;
        *) echo -e "\e[1;31mInvalid option! Please choose a valid option.\e[0m"; sleep 1 ;;
    esac
done
