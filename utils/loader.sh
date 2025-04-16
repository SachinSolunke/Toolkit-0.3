#!/bin/bash

clear
echo -e "\033[1;36mLoading Toolkit 0.2... Please wait\033[0m"
sleep 0.5

spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

(sleep 2) & spinner

# Show Banner
figlet -f slant "Toolkit 0.2" | lolcat
