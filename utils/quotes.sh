#!/bin/bash

quotes=(
  "Hack the planet!"
  "Root is not a privilege, it's a mindset."
  "No system is safe."
  "Stay low. Go fast. Kill first. Die last."
  "You are the glitch in the Matrix."
  "0x0: Where your limits end, hacking begins."
  "In a world of firewalls, be the breach."
  "Every input is an opportunity — exploit it."
)

# Random quote
quote=${quotes[$RANDOM % ${#quotes[@]}]}
echo -e "\n\e[1;32m\"$quote\"\e[0m"
echo -e "\e[1;90m         — AI God & Annu\e[0m\n"
