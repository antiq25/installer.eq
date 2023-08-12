#!/bin/bash

print_banner() {
  local CYAN=$(tput setaf 6)
  local RESET=$(tput sgr0)
  cat << EOF

${CYAN}

░█▀▄░█▀▀░█▀▀░█▀█░█░█░█░░░▀█▀░█▀▀
░█░█░█▀▀░█▀▀░█▀█░█░█░█░░░░█░░▀▀█
░▀▀░░▀▀▀░▀░░░▀░▀░▀▀▀░▀▀▀░░▀░░▀▀▀

${RESET}
EOF
}

print_banner

lolcat "$HOME/installer.eq/install/keys/bin/readme"

read -p "Are you sure you want to continue? (yes/no): " response

if [[ "$response" == "yes" || "$choice" == "y" ]]; then
  echo "You chose to continue."
  sh "$HOME/installer.eq/install/keys/bin/execdefaults.sh"
elif [[ "$response" == "no" || "$choice" == "n" ]]; then
  echo "You chose to cancel."
  exit 0
else
  echo "Invalid choice. Please choose 'yes' or 'no'."
fi
