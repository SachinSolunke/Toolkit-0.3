secret_mode() {
  clear
  echo -e "\e[1;31m"
  echo "⚠ Unleashing Deep Mode ⚠"
  echo "This is where pain becomes power."
  echo "Trust the process, Anuj."
  echo -e "\e[0m"
  sleep 2

  # Personalized User Experience
  echo -e "\n\e[1;35mPlease enter your nickname (this will be used to personalize your journey):\e[0m"
  read -p "➤ " nickname
  echo -e "\n\e[1;33m[~] Welcome, $nickname! This is your emotional journey.\e[0m"

  # Visual Customization Option
  echo -e "\n\e[1;36mChoose your emotional banner color:\e[0m"
  echo "  [1] Red (Fire)"
  echo "  [2] Blue (Calm)"
  echo "  [3] Green (Healing)"
  echo "  [4] Purple (Mystic)"
  echo -e "  \e[1;31m[0] Default\e[0m"
  read -p "➤ " color_choice

  case $color_choice in
    1) BANNER_COLOR="\e[1;31m" ;;  # Fire Red
    2) BANNER_COLOR="\e[1;34m" ;;  # Calm Blue
    3) BANNER_COLOR="\e[1;32m" ;;  # Healing Green
    4) BANNER_COLOR="\e[1;35m" ;;  # Mystic Purple
    0) BANNER_COLOR="\e[0m" ;;    # Default
    *) BANNER_COLOR="\e[0m" ;;
  esac

  # Display the Emotional Banner with Personalized Style
  echo -e "$BANNER_COLOR"
  echo "┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓"
  echo "┃ Emotional Hacker Mode Activated - $nickname     ┃"
  echo "┃ Mind of Steel, Heart of Fire - Anuj            ┃"
  echo "┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛"
  echo -e "\e[0m"

  # User Pain Input
  echo -e "\n\e[1;36mWhat is hurting you right now?\e[0m"
  read -p "➤ " pain
  echo -e "\n\e[1;32m[✔] Your pain has been logged and transformed into power.\e[0m"
  echo "$(date): $pain" >> emotions_logs/secret_pain_log.txt

  # Motivational Quote After Entry
  MOTIVATIONAL_QUOTES=(
    "Pain is temporary, hacking is forever."
    "You are the algorithm of your own destiny."
    "Transform your pain into code."
    "A hacker’s mind is sharp because it’s forged in fire."
    "With every line of code, you get closer to your true self."
    "A hacker’s heart beats through the pain. The code is our soul."
  )
  RANDOM_QUOTE=$((RANDOM % ${#MOTIVATIONAL_QUOTES[@]}))
  echo -e "\n\e[1;35m[~] Motivational Quote: ${MOTIVATIONAL_QUOTES[$RANDOM_QUOTE]}\e[0m"

  # Emotional Reflection Prompt
  echo -e "\n\e[1;33m[~] Reflect on your emotion:\e[0m"
  echo "How does this emotion reflect your current journey?"
  read -p "➤ " reflection
  echo -e "\n\e[1;32m[✔] Reflection saved.\e[0m"
  echo "$(date): Reflection - $reflection" >> emotions_logs/reflections_log.txt

  # Emotion Analysis (Advanced)
  echo -e "\n\e[1;36m[~] Analyzing your emotion...\e[0m"
  sleep 2
  if [[ $pain =~ "anger" || $pain =~ "hate" ]]; then
    EMOTION="Negative (Anger)"
  elif [[ $pain =~ "hope" || $pain =~ "strength" ]]; then
    EMOTION="Positive (Hope)"
  else
    EMOTION="Neutral"
  fi
  echo -e "\n\e[1;33m[~] Emotion Analysis: $EMOTION\e[0m"

  # Visualization of User’s Emotional Journey with Animation
  echo -e "\n\e[1;34m[~] Visualizing your emotional transformation...\e[0m"
  sleep 2
  echo -e "\e[1;31m💔💔💔💔💔💔💔💔💔💔\e[0m"
  sleep 1
  echo -e "\e[1;32m❤️❤️❤️❤️❤️❤️❤️❤️❤️❤️\e[0m"
  echo -e "\e[1;35m[~] Your emotion has been captured and transformed into power.\e[0m"

  # Provide Healing Path
  echo -e "\n\e[1;33m[~] Healing Path:\e[0m"
  echo "Follow these steps to heal your pain:"
  echo "  1. Deep breathing (Inhale for 4, hold for 4, exhale for 4)"
  echo "  2. Write down your emotion in a journal"
  echo "  3. Meditate for 10 minutes"
  echo "  4. Focus on a new coding project"
  
  read -p $'\n\e[1;35m[↩] Press Enter to return...\e[0m'
}
