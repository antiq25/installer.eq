#!/bin/bash

# Check if running as root
if [[ $EUID -eq 0 ]]; then
   echo "This script must not be run as root" 
   exit 1
fi

# Function to set color variables
set_colors() {
  if tput setaf 1 &> /dev/null; then
    tput sgr0; # reset colors
    bold=$(tput bold);
    reset=$(tput sgr0);
    black=$(tput setaf 0);
    blue=$(tput setaf 33);
    cyan=$(tput setaf 37);
    green=$(tput setaf 64);
    orange=$(tput setaf 166);
    purple=$(tput setaf 125);
    red=$(tput setaf 140);
    violet=$(tput setaf 61);
    white=$(tput setaf 15);
    yellow=$(tput setaf 136);
  else
    bold='';
    reset="\e[0m";
    black="\e[1;30m";
    blue="\e[1;34m";
    cyan="\e[1;36m";
    green="\e[1;32m";
    orange="\e[1;33m";
    purple="\e[1;35m";
    red="\e[1;41m";
    violet="\e[1;35m";
    white="\e[1;37m";
    yellow="\e[1;33m";
  fi;
}

# Get the directory where the script is located
script_dir=$(dirname "$0")

# Get all files in the script's directory
files=("$script_dir"/*)

# Function to print files with highlighting
print_files() {
  for i in "${!files[@]}"; do
    # Get just the file name, not the full path
    file_name=${files[i]##*/}
    if [[ $i -eq $index ]]; then
      echo  "$green$file_name$reset"
    else
      echo "$file_name"
    fi
  done
}

# Set initial index to 0
index=0

# Set colors
set_colors

# Print files initially
print_files

# Loop to read arrow keys and select file
while true; do
  read -rsn1 input
  if [[ $input == "" ]]; then
    # Enter key pressed, cat selected file
    clear
    cat "${files[index]}"
    echo "Press enter to select another file or type 'exit' to quit"
    read -r input2
    if [[ $input2 == "exit" ]]; then
      break
    elif [[ $input2 == "" ]]; then
      # If enter is pressed again, re-run the script
      exec "$0"
    else
      clear
      print_files
    fi
  elif [[ $input == $'\x1b' ]]; then
    # Arrow key pressed, read next two inputs
    read -rsn2 input
    if [[ $input == "[A" ]]; then
      # Up arrow key pressed, decrement index
      ((index--))
      if ((index < 0)); then
        index=$((${#files[@]}-1))
      fi
    elif [[ $input == "[B" ]]; then
      # Down arrow key pressed, increment index
      ((index++))
      if ((index == ${#files[@]})); then
        index=0
      fi
    fi
    # Clear screen and print files with highlighting
    clear
    print_files
  fi
done
