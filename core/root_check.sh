#!/bin/bash

if [ "$EUID" -eq 0 ]; then
  echo -e "\033[1;32m[+] Root access detected.\033[0m"
else
  echo -e "\033[1;33m[!] Non-root user detected. Some tools may have limited features.\033[0m"
fi
