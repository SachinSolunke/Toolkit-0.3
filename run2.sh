#!/bin/bash
clear
echo -e "\e[1;33m[+] Loading Toolkit 0.3... Please wait\e[0m"
sleep 1

# List of essential packages
essential_packages=("git" "python2" "curl" "wget" "figlet")

# Function to check installed packages
check_installed_packages() {
    echo -e "\e[1;36mChecking installed packages...\e[0m"
    for package in "${essential_packages[@]}"; do
        if command -v "$package" &> /dev/null; then
            echo -e "\e[1;32m$package is already installed.\e[0m"
        else
            echo -e "\e[1;31m$package is not installed! Installing now...\e[0m"
            install_package "$package"
        fi
    done
}

# Function to install missing packages
install_package() {
    local package=$1
    pkg install "$package" -y
}

# Function to install tools
install_tools() {
    echo -e "\e[1;36mStarting tool installation...\e[0m"
    # Example: D-TECT installation
    if [ ! -d "D-TECT-1" ]; then
        echo -e "\e[1;32mCloning D-TECT-1 repository...\e[0m"
        git clone https://github.com/shawarkhanethicalhacker/D-TECT-1.git
        cd D-TECT-1 || exit
        python2 d-tect.py
    else
        echo -e "\e[1;32mD-TECT-1 already exists.\e[0m"
    fi
}

# Function to update toolkit
update_toolkit() {
    echo -e "\e[1;36mChecking for updates...\e[0m"
    git pull origin master
    echo -e "\e[1;32mToolkit updated to the latest version.\e[0m"
}

# Main menu function for 'run2.sh'
main_menu() {
    while true; do
        echo -e "\n\e[1;36m[1] Check Dependencies and Packages\e[0m"
        echo -e "\e[1;36m[2] Install Tools\e[0m"
        echo -e "\e[1;36m[3] Update Toolkit\e[0m"
        echo -e "\e[1;36m[0] Exit\e[0m"
        echo -n "Choose an option: "
        read -r choice

        case $choice in
            1)
                check_installed_packages  # Check for packages
                ;;
            2)
                install_tools  # Install tools like D-TECT
                ;;
            3)
                update_toolkit  # Update the toolkit
                ;;
            0)
                echo -e "\e[1;32mExiting Toolkit 0.3... Goodbye!\e[0m"
                exit
                ;;
            *)
                echo -e "\e[1;31mInvalid option! Please choose a valid option.\e[0m"
                ;;
        esac
    done
}

# Call the main menu function
main_menu
