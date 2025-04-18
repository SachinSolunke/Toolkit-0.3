#!/bin/bash

# Function to display tool info
show_tool_info() {
  clear
  echo -e "${CYAN}Tool: ${YELLOW}$1"
  echo -e "${CYAN}Version: ${YELLOW}$2"
  echo -e "${CYAN}Author: ${YELLOW}$3"
  echo -e "${CYAN}Repo: ${YELLOW}$4"
  echo -e "${CYAN}YouTube: ${YELLOW}$5"
  echo -e "${CYAN}Telegram: ${YELLOW}$6"
  echo -e "${GREEN}Installing dependencies...${RESET}"
  sleep 1
}

function show_banner() {
  clear
  echo -e "\e[1;32m"
  echo "███╗   ███╗ █████╗ ███╗   ██╗██╗   ██╗"
  echo "████╗ ████║██╔══██╗████╗  ██║╚██╗ ██╔╝"
  echo "██╔████╔██║███████║██╔██╗ ██║ ╚████╔╝ "
  echo "██║╚██╔╝██║██╔══██║██║╚██╗██║  ╚██╔╝  "
  echo "██║ ╚═╝ ██║██║  ██║██║ ╚████║   ██║   "
  echo "╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   "
  echo -e "\e[0m"
}
