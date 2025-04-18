figlet "Installing All Requirements..." | lolcat
apt update && apt upgrade -y
pkg install python python2 git curl wget php nmap -y
pip install requests bs4 termcolor
gem install lolcat
echo -e "\nAll packages installed successfully!\n"
