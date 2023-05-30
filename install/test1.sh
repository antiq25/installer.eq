#!/bin/bash

# Function to execute performance script
execute_script() {
  script_name=$1
  case "$script_name" in
    "prepinstall")
      echo "Preparing Installer"
      sh $HOME/installer.eq/install/installbrew.sh
      ;;
    "runinstall")
      echo "Running Installer.."
      sh $HOME/installer.eq/install/brewinstaller2.sh
      ;;
    "fontconfig")
      echo "Installing Fonts & Config"
      sh $HOME/installer.eq/install/defaults.sh
      ;;
    "clean")
      echo "Running Cleaner..."
      sh $HOME/installer.eq/mtn/testclean.sh 
      ;;
    "debloat")
      echo "Running Debloater..."
      sh ~/installer.eq/utils/macos.sh
      ;;
    "restart")
      echo "Restarting Config..."
      sh $HOME/installer.eq/mtn/restart.sh
      ;;
    "flags")
      echo "Flags"
      sh $HOME/installer.eq/docs/flags.sh
      ;;
     "gitcmds")
      sh $HOME/installer.eq/docs/map.sh
      ;;
    *)
      echo "Invalid command: $script_name"
      return
      ;;
  esac
  echo "Script executed!"
  echo
}

# Function to display the menu for a given category
display_menu() {
  category=$1
  case "$category" in
    "install")
      echo "'prepinstall', 'runinstall', 'fontconfig'"
      ;;
    "performance")
      echo "'debloat', 'clean', 'restart'"
      ;;
    "docs")
      echo "'flags', 'gitcmds'"
      ;;
  esac
}

# Function to display the main menu
display_main_menu() {
  echo "$(tput setaf 2)EQ Utilities Menu$(tput sgr0)"
  echo "----------------"
  echo "$(tput setaf 4)     Choose  $(tput sgr0)"
  echo "----------------"
  echo "'install', 'performance', 'docs'"
}

# The main loop
while true; do
  if [ -z "$input" ] || [ "$input" == "return" ]; then
    display_main_menu
  fi
  read -p "Enter the menu or command you want, or 'exit' to quit: " input
  clear
  if [ "$input" == "exit" ]; then
    echo "Exiting..."
    break
  elif [ "$input" == "install" ] || [ "$input" == "performance" ] || [ "$input" == "docs" ]; then
    echo "Available commands in '$input' menu are:"
    echo "    "
    display_menu "$input"
    echo "    "
    echo "Enter 'return' to go back to the main menu."
    echo "    "
  elif [ "$input" == "return" ]; then
    continue
  else
    execute_script "$input"
  fi
done
