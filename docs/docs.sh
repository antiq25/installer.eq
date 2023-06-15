#!/bin/bash
CYAN="\033[0;96m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"
GREEN="\033[0;32m" 


display_ascii_art2() {
 cat << "EOF"
       
DOCUMENTATION HOLDER                                                     
EOF
}



# Function to display the Docs sub-menu
display_docs_menu() {
while true; do
clear
display_ascii_art2
echo "   │"
echo "   └──  ${YELLOW}equtil${RESET} "
echo "       ├── 󰈙 ${YELLOW}docs${RESET}"
echo "       │   ├── 󰬺 󰈙 ${GREEN}cmds${RESET}"
echo "       │   ├── 󰬻 󰈙 ${GREEN}flags${RESET}"
echo "       │   ├── 󰬼 󰈙 ${GREEN}codesign${RESET}"
echo "       │   ├── 󰬽 󰈙 ${GREEN}binds${RESET}"
echo "       │   └── 󰬾 󰈙 ${GREEN}yabai${RESET}"
echo "       └── 󰌑 return"
echo " "
echo "keys 1-5 (press 'enter' to go return): "
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
      *) echo "invalid choice.. hit enter to try again"; read;;
    esac
  done
}

# Main menu function
main_menu() {
while true; do
clear
display_ascii_art2
echo "type help to see cmds"
echo "  ├── 󰬼 󰷉 ${YELLOW}docs${RESET}"
echo "  └── 󰌑 exit "
echo " " 
read choice
 case $choice in
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
