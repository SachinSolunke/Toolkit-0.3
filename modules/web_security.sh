#!/bin/bash
source functions/utils.sh
source functions/banner.sh

clear
banner "Web Security"

echo -e "$bold$cyan[+] Loading Web Application Security Tools...$reset"
sleep 1

echo -e "\n$bold$yellow Available Tools:$reset"
echo -e "$green 1) SQLMap        $white[Automated SQL Injection Tool]"
echo -e "$green 2) Nikto         $white[Web Server Vulnerability Scanner]"
echo -e "$green 3) XSStrike      $white[Advanced XSS Detection Tool]"
echo -e "$green 4) XSSCon        $white[XSS Scanner by s0md3v]"
echo -e "$green 5) WhatWeb       $white[Website Fingerprinter]"
echo -e "$green 6) Wfuzz         $white[Web Application Fuzzer]"
echo -e "$green 7) ReconDog      $white[Recon Framework by tomnomnom]"
echo -e "$green 0) Back to Main Menu"

echo
read -p $'\e[1;36mChoose an option: \e[0m' choice

case $choice in
  1)
    pkg install sqlmap -y
    sqlmap --help
    ;;
  2)
    pkg install nikto -y
    nikto -Help
    ;;
  3)
    git clone https://github.com/s0md3v/XSStrike ~/tools/XSStrike
    cd ~/tools/XSStrike && python3 xsstrike.py
    ;;
  4)
    git clone https://github.com/s0md3v/XSSCon ~/tools/XSSCon
    cd ~/tools/XSSCon && python3 XSSCon.py
    ;;
  5)
    git clone https://github.com/urbanadventurer/WhatWeb ~/tools/WhatWeb
    cd ~/tools/WhatWeb && ruby whatweb
    ;;
  6)
    git clone https://github.com/xmendez/wfuzz ~/tools/wfuzz
    cd ~/tools/wfuzz && python3 wfuzz.py
    ;;
  7)
    git clone https://github.com/s0md3v/ReconDog ~/tools/ReconDog
    cd ~/tools/ReconDog && python2 dog.py
    ;;
  0)
    bash run.sh
    ;;
  *)
    echo -e "$red Invalid option. Try again.$reset"
    ;;
esac
