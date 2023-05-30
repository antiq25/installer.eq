#!/bin/bash

# Function to execute performance script
execute_script() {
  script_name=$1
  case "$script_name" in
    "Prepare Installer")
      echo "Preparing Installer"
      sh $HOME/installer.eq/install/installbrew.sh
      ;;
    "Run Installer")
      echo "Running Installer.."
      sh $HOME/installer.eq/install/brewinstaller.sh
      ;;
    "Install Fonts & Config")
      echo "Installing Fonts & Config"
      sh $HOME/installer.eq/install/defaults.sh
      ;;
    "Cleaner")
      echo "Running Cleaner..."
      sh $HOME/installer.eq/mtn/testclean.sh 
      ;;
    "Debloater")
      echo "Running Debloater..."
      sh ~/installer.eq/utils/macos.sh
      ;;
    "Restart Config")
      echo "Restarting Config..."
      sh $HOME/installer.eq/mtn/restart.sh
      ;;
    "Flags")
     echo "Flags"
      sh $HOME/installer.eq/docs/flags.sh
      ;;
     "Gits & Commands")
      sh $HOME/installer.eq/docs/map.sh
      ;;
    *)
      echo "Invalid script: $script_name"
      return
      ;;
  esac
  echo "Script executed!"
  echo
}

# Function to display the menu with colored title
display_menu() {
  clear
  echo "$(tput setaf 2)EQ Utilities Menu$(tput sgr0)"
  echo "$(tput setaf 9)-----------------$(tput sgr0)"
  options=(
    "Exit"
    "Prepare Installer"
    "Run Installer"
    "Install Fonts & Config"
    "Performance Menu"
    "Documentation"
  )
  for i in "${!options[@]}"; do
    echo "$((i)). ${options[$i]}"
  done
}

# Function to display the MTN script menu with colored title
display_mtn_menu() {
  clear
  echo "$(tput setaf 2)Performance Package$(tput sgr0)"
  echo "$(tput setaf 9)--------------------$(tput sgr0)"
  echo "0. Return to previous menu"
  mtn_scripts=(
    "Debloater"
    "Cleaner"
    "Restart Config"
  )
  for i in "${!mtn_scripts[@]}"; do
    echo "$((i+1)). ${mtn_scripts[$i]}"
  done
}

# Function to display the Docs menu with colored title
display_docs_menu() {
  clear
  echo "$(tput setaf 2)Docs Menu$(tput sgr0)"
  echo "$(tput setaf 9)-----------$(tput sgr0)"
  echo "0. Return to previous menu"
  docs_options=(
    "Flags"
    "Gits & Commands"
    "Other Resources"
  )
  for i in "${!docs_options[@]}"; do
    echo "$((i+1)). ${docs_options[$i]}"
  done
}

# Initialize selected option index
selected_index=0

# Store the previous menu
previous_menu=""

# Loop until the user chooses to exit
while true; do
  if [[ $previous_menu == "" ]]; then
    display_menu
  elif [[ $previous_menu == "mtn" ]]; then
    display_mtn_menu
  elif [[ $previous_menu == "docs" ]]; then
    display_docs_menu
  fi

  # Prompt for user input
  read -p "Enter the number of the script you want to execute: " input

  case "$input" in
  0) # Return to previous menu or Exit
    if [[ $previous_menu == "" ]]; then
      echo "Exiting..."
      exit 0
    else
      previous_menu=""
    fi
    ;;
  [1-3]) # Execute script or Return to previous menu
    if [[ $previous_menu == "" ]]; then
      script_name="${options[$input]}"
      execute_script "$script_name"
      read -n 1 -s -r -p "Press any key to continue..."
    elif [[ $previous_menu == "mtn" ]]; then
      script_name="${mtn_scripts[$((input-1))]}"
      execute_script "$script_name"
      read -n 1 -s -r -p "Press any key to continue..."
    elif [[ $previous_menu == "docs" ]]; then
      script_name="${docs_options[$((input-1))]}"
      execute_script "$script_name"
      read -n 1 -s -r -p "Press any key to continue..."
    else
      echo "Invalid choice. Please enter a valid option."
    fi
    ;;
  4) # MTN or Return to previous menu
    if [[ $previous_menu == "" ]]; then
      previous_menu="mtn"
    else
      previous_menu=""
    fi
    ;;
  5) # Docs or Return to previous menu
    if [[ $previous_menu == "" ]]; then
      previous_menu="docs"
    else
      previous_menu=""
    fi
    ;;
  *) # Invalid input
    echo "Invalid choice. Please enter a valid option."
    ;;
 esac
done
