#!/data/data/com.termux/files/usr/bin/bash

# =================== Colors ====================
red="\e[1;31m"
green="\e[1;32m"
blue="\e[1;34m"
cyan="\e[1;36m"
yellow="\e[1;33m"
purple="\e[1;35m"
reset="\e[0m"

# ============ BANNER FUNCTIONS ================

classic_jarvis_banner() {
    echo -e "${blue}[+] Loading Classic Jarvis Banner...${reset}"
    sleep 2
}

dragon_fire_banner() {
    echo -e "${red}[+] Activating Dragon Fire...${reset}"
    sleep 2
}

skull_matrix_banner() {
    echo -e "${green}[+] Unleashing Skull Matrix...${reset}"
    sleep 2
}

custom_banner() {
    read -p "Enter your custom hacker name: " cname
    echo -e "${purple}[+] Welcome, $cname!${reset}"
    sleep 2
}

hidden_banner() {
    echo -e "${cyan}[+] Entering Hidden Banner Mode...${reset}"
    sleep 2
}

remove_banner() {
    echo -e "${yellow}[+] No banner will be shown...${reset}"
    sleep 1
}

# Optional - You can add show_dynamic_time later
show_banner_with_time() {
    clear
    # show_dynamic_time &  # You can define it later
}

# =================== BANNER MENU ====================

while true; do
    show_banner_with_time
    echo -e "\n${blue}Choose a banner style:${reset}"
    echo -e "${red}[1] Classic Jarvis Banner${reset}"
    echo -e "${green}[2] Dragon Fire Banner${reset}"
    echo -e "${yellow}[3] Skull Matrix Banner${reset}"
    echo -e "${purple}[4] Custom Hacker Banner${reset}"
    echo -e "${cyan}[5] Hidden Mode Banner${reset}"
    echo -e "${red}[0] Exit${reset}"

    read -p "Choose an option: " opt
    case $opt in
        1) classic_jarvis_banner; break ;;
        2) dragon_fire_banner; break ;;
        3) skull_matrix_banner; break ;;
        4) custom_banner; break ;;
        5) hidden_banner; break ;;
        0) echo -e "${green}Exiting Toolkit...${reset}"; exit ;;
        *) echo -e "${red}Invalid option! Please try again.${reset}"; sleep 1 ;;
    esac
done

# ============== SHOW TOOLKIT INFO =================
bash utils/show_info.sh
sleep 1

# ============== MAIN MENU LOOP =================
page=1

while true; do
    clear
    bash utils/show_info.sh
    echo

    if [[ $page -eq 1 ]]; then
        echo -e "${cyan}[1] Information Gathering${reset}"
        echo -e "${cyan}[2] Exploitation${reset}"
        echo -e "${cyan}[3] Phishing Tools${reset}"
        echo -e "${cyan}[4] Customize Terminal Banner${reset}"
        echo -e "${cyan}[5] Install Hacker Fonts${reset}"
        echo -e "${cyan}[6] Full Setup (Install All Packages)${reset}"
        echo -e "${cyan}[7] Wireless Hacking (Non-Root)${reset}"
        echo -e "${cyan}[8] Password Attacks Tools${reset}"
        echo -e "${cyan}[9] Hash Cracking & Wordlists${reset}"
        echo -e "${cyan}............. Page: 1 .............${reset}"
        echo -e "${yellow}[>] N - Next Page${reset}"
        echo -e "${green}[0] Exit${reset}"

    elif [[ $page -eq 2 ]]; then
        echo -e "${purple}[A] Email Attacks & Spoofing${reset}"
        echo -e "${purple}[B] Reverse Engineering Tools${reset}"
        echo -e "${purple}[C] Android Hacking & APK Mods${reset}"
        echo -e "${purple}[D] Voice Phishing Tools${reset}"
        echo -e "${purple}[E] Network Exploitation & MITM${reset}"
        echo -e "${purple}[F] Tool Info & Help${reset}"
        echo -e "${purple}[G] Secret Mode${reset}"
        echo -e "${purple}[H] Update Toolkit${reset}"
        echo -e "${purple}[I] Hacker Quotes & Motivation${reset}"
        echo -e "${purple}[J] Terminal Customization${reset}"
        echo -e "${purple}[K] Fun Zone (Pranks & Animations)${reset}"
        echo -e "${purple}[L] Learn Hacking${reset}"
        echo -e "${purple}[M] Exit with Style${reset}"
        echo -e "${cyan}............. Page: 2 .............${reset}"
        echo -e "${yellow}[<] P - Previous Page  |  [>] N - Next Page${reset}"

    elif [[ $page -eq 3 ]]; then
        echo -e "${blue}[X] Steganography Tools${reset}"
        echo -e "${blue}[Y] Forensics & Metadata Analysis${reset}"
        echo -e "${blue}[Z] Social Engineering Kits${reset}"
        echo -e "${blue}[W] Custom Tools by Anuj & AI God${reset}"
        echo -e "${cyan}............. Page: 3 .............${reset}"
        echo -e "${yellow}[<] P - Previous Page${reset}"

    elif [[ $page -eq 4 ]]; then
        echo -e "${red}[99] Emotional Hacker Mode - Soul Zone${reset}"
        echo -e "${cyan}............. Page: 4 .............${reset}"
        echo -e "${yellow}[<] P - Previous Page${reset}"
    fi

    echo -ne "\nChoose an option: "
    read choice

    case $choice in
        1) bash modules/info_gathering.sh ;;
        2) bash modules/exploitation.sh ;;
        3) bash modules/phishing.sh ;;
        4) bash utils/set_banner.sh ;;
        5) bash modules/fonts.sh ;;
        6) bash utils/install_packages.sh ;;
        7) bash modules/wireless_nonroot.sh ;;
        8) bash modules/password_attacks.sh ;;
        9) bash modules/hash_cracking.sh ;;
        99) bash modules/emotional_mode.sh ;;

        A|a) bash modules/email_attacks.sh ;;
        B|b) bash modules/reverse_engineering.sh ;;
        C|c) bash modules/android_hacking.sh ;;
        D|d) bash modules/voice_phishing.sh ;;
        E|e) bash modules/network_exploitation.sh ;;
        F|f) bash utils/tool_info.sh ;;
        G|g) bash utils/secret_mode.sh ;;
        H|h) bash utils/update_toolkit.sh ;;
        I|i) bash utils/hacker_quotes.sh ;;
        J|j) bash utils/terminal_customize.sh ;;
        K|k) bash utils/fun_zone.sh ;;
        L|l) bash utils/learn_hacking.sh ;;
        M|m) bash utils/exit_with_style.sh ;;

        X|x) bash modules/steganography.sh ;;
        Y|y) bash modules/forensics.sh ;;
        Z|z) bash modules/social_engineering.sh ;;
        W|w) bash modules/custom_tools.sh ;;

        N|n) ((page++)); if [[ $page -gt 4 ]]; then page=4; fi ;;
        P|p) ((page--)); if [[ $page -lt 1 ]]; then page=1; fi ;;
        0) echo -e "${green}Exiting Toolkit 0.3... Goodbye!${reset}"; exit ;;
        *) echo -e "${red}Invalid option! Please choose a valid option.${reset}"; sleep 1 ;;
    esac
done
