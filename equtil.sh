#!/bin/bash
CYAN="\033[0;96m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"
GREEN="\033[0;32m" 


display_ascii_art2() {
 cat << "EOF"
       
 ═══════════════════════════════════════      
   ___  __ _ _   _| |_(_) |  ___| |__    
  / _ \/ _` | | | | __| | | / __| '_ \   
 |  __/ (_| | |_| | |_| | |_\__ \ | | |  
  \___|\__, |\__,_|\__|_|_(_)___/_| |_|  
══════════|_|══════════════════════════                                                      
EOF
}

#SAMPLE
display_help_menu() {
while true; do
clear
 printf "
EQUTIL 2023 - 
created by eq team
antiq - github.com/antiq25
dycl0n -  github.com/dycl0n

you will see boxes instead of icons before you run the installer

󰧹  = key to activate
  = cmd to activate

main menu                     
──────────────────
 install -   install 
 optimize -   opt   
 docs -   docs
 exit - 󰧹  4 

sub menus 󰧹 
─────────────────────
1. first item  󰧹 1 
2. second item 󰧹 2
3. third item  󰧹 3 
4. fourth item 󰧹 4 
󰌑  - enter 

this was created so that anyone could build ontop if it, jsut edit the equtil.sh file to inject your scripts or remove the ones in here
we will be adding a os detector and have scripts for linux , windows soon..
"
echo 
read choice
    case $choice in
  "") 
     clear
     return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

display_install_menu() {
while true; do
printf "\033c"
display_ascii_art2
echo "    └──  ${YELLOW}equtil${RESET}"
echo "       ├──  ${YELLOW}install${RESET}"
echo "       │   ├───   ${GREEN}preinstall${RESET}"
echo "       │   ├───   ${GREEN}install${RESET}"
echo "       │   ├───   ${GREEN}defaults${RESET}"
echo "       │   └───   ${GREEN}config${RESET}"
echo "       └── 󰌑 ${CYAN}return${RESET}"
echo "type cmd to execute (press 'enter' to go return): "
    read choice
    case $choice in
      "preinstall") 
           echo "${GREEN}preparing installer..${RESET}"
           $HOME/installer.eq/install/installbrew.sh
           echo "press enter to go return."
           read;;
      "installer") 
           echo "${GREEN}installer..${RESET}"
           $HOME/installer.eq/install/installerv3.sh
           echo "press Enter to go return."
           read;;
      "defaults") 
           echo "${GREEN}injecting macos defaults..${RESET}"
           $HOME/installer.eq/install/defaults.sh
            echo "press enter to go return."
           read;;
      "config") 
           echo "${GREEN}injecting config...${RESET}"
           $HOME/installer.eq/install/font.sh
            echo "press enter to go return."
           read;;
        "") 
     clear
     return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

display_optimize_menu() {
while true; do
printf "\033c"
display_ascii_art2
echo "     └──  ${YELLOW}equtil${RESET}"
echo "         ├── 󰓅 ${YELLOW}optimizer${RESET}"
echo "         │   ├── 󰬺 ${GREEN}optimize${RESET}"
echo "         │   ├── 󰬻 ${GREEN}debloat${RESET}"
echo "         │   ├──   ${GREEN}restartyabai${RESET}"
echo "         │   └── 󰬼 ${GREEN}restartcfg${RESET}"
echo "         └── 󰌑 return"
echo
echo "hit key to select choice (press 'enter' to go return): "
read choice
case $choice in
      "1") 
           echo "mtn.optimize"
           $HOME/installer.eq/mtn/cleanv1.sh
           echo "press enter to go return."
           read;;
      "2") 
           echo "mtn.debloat"
          $HOME/installer.eq/utils/macos.sh
           echo "press enter to go return."
           read;;
      "3") 
           echo "mtn.restartcfg"
          $HOME/installer.eq/mtn/restartcfg
          echo "press enter to go return."
           read;;
      "4") 
          echo "restarting keys.."
          $HOME/installer.eq/mtn/refreshyab.sh
          echo "press enter to go return." 
           read;;
        "") return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
  }

# Function to display the Docs sub-menu
display_docs_menu() {
while true; do
clear
display_ascii_art2
echo "   └──  ${YELLOW}equtil${RESET} "
echo "       ├── 󰈙 ${YELLOW}docs${RESET}"
echo "       │   ├── 󰬺 󰈙 ${GREEN}cmds${RESET}"
echo "       │   ├── 󰬻 󰈙 ${GREEN}flags${RESET}"
echo "       │   ├── 󰬼 󰈙 ${GREEN}codesign${RESET}"
echo "       │   ├── 󰬽 󰈙 ${GREEN}binds${RESET}"
echo "       │   └── 󰬾 󰈙 ${GREEN}yabai${RESET}"
echo "       └── 󰌑 return"
echo " "
echo "enter your choice (press 'enter' to go return): "
     read choice
    case $choice in
      "1") 
           echo "cmds.."
           cat $HOME/installer.eq/docs/map.txt
           echo "press enter to go return."
           read;;

      "2")
           echo "${GREEN}flags${RESET}.."
           cat $HOME/installer.eq/docs/flags.txt
           echo "press enter to go return."
           read;;

      "3") 
           echo "${GREEN}codesign..${RESET}"
           cat $HOME/installer.eq/docs/codesign.txt
           echo "press enter to go return."
           read;;

      "4") echo "binds"
          cat $HOME/installer.eq/docs/binds.txt
          echo "press enter to go return."
          read;;

      "5") echo "yabai"
          cat $HOME/installer.eq/docs/yabai.txt
          echo "press enter to go return."
          read;;
  "") 
     clear
     return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

# Main menu function
main_menu() {
while true; do
clear
display_ascii_art2
echo "type help to see cmds"
echo "  ├── 󰬺  install"
echo "  ├── 󰬻 󰾆 optimize"
echo "  ├── 󰬼 󰷉 docs"
echo "  └── 󰌑 exit "
echo " " 
read choice
 case $choice in
      "1") display_install_menu;;
      "2") display_optimize_menu;;
      "3") display_docs_menu;;
      "help") display_help_menu;;
   "")
 echo "hit enter again to confirm exit. hit any other key to cancel"
    read -rsn1 input1
     if [ "$input1" = "" ]; then
     echo "Exiting..."
       return 0
       else
       echo "Returning to Install Menu..."
       read -rsn1 input2
       fi
        ;;
      *)
        echo "Invalid choice. Please try again."
        sleep 2
        ;;
    esac
  done
}

# Call the main menu function to start the script
main_menu
