#!/bin/bash


# Function to display the Install sub-menu
display_install_menu() {
while true; do
clear
echo "╔═══════════════════════════╗"
echo "║         equtil            ║"
echo "║───────────────────────────║"
     echo "└── equtil"
     echo "    ├── install"
     echo "    │   ├──  eq.preinstall"
     echo "    │   ├──  eq.installer"
     echo "    │   ├──  eq.config"
     echo "    │   └──  eq.osxdefaults"
     echo "    └── return"
     echo "type cmd to execute (press 'enter' to go return): "
    read choice
    case $choice in
      "eq.preinstall") 
           echo "preparing installer.."
           $HOME/installer.eq/install/installbrew.sh
           echo "press enter to go return."
           read;;
      "eq.installer") 
           echo "running installer.."
           $HOME/installer.eq/install/brewinstaller3.sh
           echo "press Enter to go return."
           read;;
      "eq.defaults") 
           echo "changing macos defaults.."
           $HOME/installer.eq/install/defaults.sh
            echo "press enter to go return."
           read;;
      "eq.config") 
           echo "injecting config.."
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

# Function to display the Optimize + Debloater sub-menu
display_optimize_menu() {
clear
echo "╔═══════════════════════════╗"
echo "║         equtil            ║"
echo "║───────────────────────────║"
  while true; do
     echo "└── equtil"
     echo "    ├── optimizer"
     echo "    │   ├── 1. mtn.optimize"
     echo "    │   ├── 2. mtn.debloat"
     echo "    │   └── 3. mtn.restartcfg"
     echo "    └── return"
     echo
     echo "enter your choice (press 'enter' to go return): "
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
           $HOME/installer.eq/mtn/restart.sh
           echo "press enter to go return."
           read;;
        "") return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

#SAMPLE
#display_uninstall_menu() {
#while true; do
#clear
#echo "╔═══════════════════════════╗"
#echo "║         equtil            ║"
#echo "║───────────────────────────║"
#    echo "└── equtil"
#    echo "    ├── ??"
#    echo "    │   ├── 1. Option 1 (Uninstall script 1)"
#    echo "    │   ├── 2. Option 2 (Uninstall script 2)"
#    echo "    │   └── 3. Option 3 (Uninstall script 3)"
#    echo "    └── return"
#    echo
#   echo "enter your choice (press 'enter' to go return): "
#   read choice
#   case $choice in
#     "1") 
#          echo "Option 1 chosen."
#          ./uninstall_script1.sh
#          echo "press enter to go return."
#          read;;
#     "2") 
#          echo "Option 2 chosen."
#          ./uninstall_script2.sh
#          echo "press enter to go return."
#          read;;
#     "3") 
#          echo "Option 3 chosen."
#          ./uninstall_script3.sh
#          echo "press enter to go return."
#          read;;
#      "") 
#    clear
#    return 0;;   # Allow 'enter' to return to the main menu
#     *) echo "Invalid option. press enter to try again."; read;;
#   esac
# done
#}

# Function to display the Docs sub-menu
display_docs_menu() {
while true; do
clear
echo "╔═══════════════════════════╗"
echo "║         equtil            ║"
echo "║───────────────────────────║"
     echo "└── equtil"
     echo "    ├── docs"
     echo "    │   ├── 1. cmds "
     echo "    │   ├── 2. flags"
     echo "    │   ├── 3. codesign"
     echo "    │   ├── 4. binds"
     echo "    │   └── 5. yabai"
     echo "    └──return"
     echo
     echo "enter your choice (press 'enter' to go return): "
     read choice
    case $choice in
      "1") 
           echo "cmds.."
           cat $HOME/installer.eq/docs/map.txt
           echo "press enter to go return."
           read;;

      "2")
           echo "flags.."
           cat $HOME/installer.eq/docs/flags.txt
           echo "press enter to go return."
           read;;

      "3") 
           echo "codesign.."
           cat $HOME/installer.eq/docs/codesign.txt
           echo "press enter to go return."
           read;;

      "4") echo "binds"
          cat $HOME/insatller.eq/docs/binds.txt
          echo "press enter to go return."
          read;;

      "5") echo "yabai"
          cat $HOME/insatller.eq/docs/yabai.txt
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
echo "╔═══════════════════════════╗"
echo "║         equtil            ║"
echo "║───────────────────────────║"
    echo "  ├──  1. install"
    echo "  ├──  2. optimize"
    echo "  ├──  3. docs"
    echo "  └──  4. exit"
    read choice
    case $choice in
      "1") display_install_menu;;
      "2") display_optimize_menu;;
      "3") display_docs_menu;;
      "4") exit 0;;
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

# Call the main menu function to start the script
main_menu
