#!/bin/bash

function print_banner() {
  local CYAN=$(tput setaf 6)
  local RESET=$(tput sgr0)
  cat << EOF

${CYAN}

░█▀▀░▄▀▄░░░▀█▀░█▀█░█▀▀░▀█▀░█▀█░█░░░█░░░█▀▀░█▀▄
░█▀▀░█\█░░░░█░░█░█░▀▀█░░█░░█▀█░█░░░█░░░█▀▀░█▀▄
░▀▀▀░░▀\░░░▀▀▀░▀░▀░▀▀▀░░▀░░▀░▀░▀▀▀░▀▀▀░▀▀▀░▀░▀

${RESET}
EOF
}

print_banner

read -p "INSTALLERv4 (2023) Would you like to begin? (Yes/No): " choice

if [[ "$choice" =~ ^yes$ ]]; then
  cd "$HOME/installer.eq/install" && brew bundle
elif [[ "$choice" =~ ^no$ ]]; then
  echo "Closing window"
else
  echo "Invalid choice"
fi

sudo -k # Invalidate previous sudo timestamp
sudo -v # Ask for sudo password again

if [[ $? -eq 0 ]]; then
  read -p "Installer complete. Change Apple config? (Yes/No): " choice

  if [[ "$choice" =~ ^yes$ ]]; then
    sudo sh "$HOME/installer.eq/install/keys/readme.sh"
  elif [[ "$choice" =~ ^no$ ]]; then
    echo "Closing window"
  else
    echo "Invalid choice"
  fi

  read -p "Inject dotfiles + load fonts? (Yes/No): " choice

  if [[ "$choice" =~ ^yes$ ]]; then
    sudo sh "$HOME/installer.eq/install/font.sh"
  elif [[ "$choice" =~ ^no$ ]]; then
    echo "Closing window"
  else
    echo "Invalid choice"
  fi
else
  echo "Incorrect sudo password. Exiting..."
fi
