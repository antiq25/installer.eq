#!/usr/bin/env bash 

CYAN="\033[0;96m"
YELLOW="\033[0;33m"
RED="\033[0;31m"
RESET="\033[0m"
GREEN="\033[0;32m"

display_help_menu_text() {
  cat << "EOF" 
░░░░░█▀▀░▄▀▄░█░█░▀█▀░▀█▀░█░░░░░░█▀▀░█░█
░░░░░█▀▀░█\█░█░█░░█░░░█░░█░░░░░░▀▀█░█▀█
░░░░░▀▀▀░░▀\░▀▀▀░░▀░░▀▀▀░▀▀▀░▀░░▀▀▀░▀░▀

  Welcome to EQ UTILITIES 
  developed by + anti / dyclon from eclectiq development team 

equtil is
  - a tool to help you install and optimize your macos / unix system, as well as manage your scripts, flags and other things via cli.
  - open source, we welcome the community to help build this project!

equtil currenty features
  - vulkan sdk compiler/installer
  - moltenvk sdk compiler/installer

for macos 
  - macos defaults injector
  - macos debloat script

 if you have any questions please reach out to us on discord!

https://discord.gg/eq 
EOF
}                                                                      


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


display_log_output() {
  local message
  message=$(display_ascii_art2)
  
  if [ -f "$HOME/.equtil" ]; then
    echo "Welcome Back, $USER."
  else
    echo "Welcome, $USER."
    touch "$HOME/.equtil"
  fi

  if command -v lolcat &>/dev/null; then
    echo "$message" | lolcat -a -d 1 -s 100
  else
    echo "$message"
  fi
}

display_help_menu() {
while true; do
clear
display_help_menu_text
read choice
    case $choice in
  "")
     return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
}

display_install_menu() {
while true; do
printf "\033c"
display_ascii_art2
echo "    │"
echo "    └──  ${YELLOW}equtil${RESET}"
echo "        ├──  ${GREEN}install${RESET}"
echo "        │   ├───   ${GREEN}preinstall${RESET}"
echo "        │   ├───   ${GREEN}install${RESET}"
echo "        │   ├───   ${GREEN}defaults${RESET}"
echo "        │   └───   ${GREEN}config${RESET}"
echo "        └── 󰌑 ${CYAN}return${RESET}"
echo "type cmd to execute (press 'enter' to go return): "
    read choice
    case $choice in
      "preinstall")
           echo "${GREEN}preparing installer..${RESET}"
           sh $HOME/installer.eq/install/installbrew.sh
           echo "press enter to go return."
           read;;
      "install")
           echo "${GREEN}installer..${RESET}"
         sh $HOME/installer.eq/install/installerv3.sh
           echo "press Enter to go return."
           read;;
      "defaults")
           echo "${GREEN}injecting macos defaults..${RESET}"
          sh $HOME/installer.eq/install/keys/readme.sh
            echo "press enter to go return."
           read;;
      "config")
           echo "${GREEN}injecting config...${RESET}"
          sh $HOME/installer.eq/install/font.sh
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
echo "     │"
echo "     └──  ${YELLOW}equtil${RESET}"
echo "         ├── 󰓅 ${YELLOW}optimizer${RESET}"
echo "         │   ├── 󰓅 ${GREEN}optimize${RESET}"
echo "         │   ├── 󰓅 ${GREEN}debloat${RESET}"
echo "         │   ├── 󰓅 ${GREEN}restart config${RESET}"
echo "         │   ├── 󰓅 ${GREEN}install vulkan${RESET}"
echo "         │   └── 󰓅 ${GREEN}install moltenvk${RESET}"
echo "         │  "
echo "         └── 󰌑 return"
echo
echo "hit key to select choice (press 'enter' to go return): "
read choice
case $choice in
      "speed")
           echo "optimizing..."
          sh $HOME/installer.eq/mtn/cleanv1.sh
           echo "press enter to go return."
           read;;
      "debloat")
           echo "debloating..."
         sh $HOME/installer.eq/utils/macos.sh
           echo "press enter to go return."
           read;;
      "restart")
           echo "restarting config.."
         killall -u anti && open "/Applications/Alfred\ 5.app/"
          echo "press enter to go return."
           read;;
      "vulkan")
          echo "refreshing sha256 keys..killing zsh.."
        sh  $HOME/installer.eq/utils/drivers/vulkan.sh
          echo "press enter to go return."
           read;;
      "moltenvk")
          echo "refreshing sha256 keys..killing zsh.."
        sh  $HOME/installer.eq/utils/drivers/moltenvk.sh
          echo "press enter to go return."
           read;;
        "") return 0;;   # Allow 'enter' to return to the main menu
      *) echo "Invalid option. press enter to try again."; read;;
    esac
  done
  }

# Function to display the Docs sub-menu
# display_docs_menu() {
# while true; do
# clear
# display_ascii_art2
# echo "   │"
# echo "   └──  ${YELLOW}equtil${RESET} "
# echo "       ├── 󰈙 ${YELLOW}docs${RESET}"
# echo "       │   ├──  󰈙 ${GREEN}pastebins${RESET}"
# echo "       │   ├──  󰈙 ${GREEN}flags${RESET}"
# echo "       │   ├──  󰈙 ${GREEN}codesign${RESET}"
# echo "       │   ├──  󰈙 ${GREEN}binds${RESET}"
# echo "       │   └──  󰈙 ${GREEN}yabai${RESET}"
# echo "       └── 󰌑 return"
# echo " "
# echo "type cmd to execute (press 'enter' to go return): "
#      read choice
#     case $choice in
#       "map")
#            echo "list."
#           sh $HOME/installer.eq/docs/k.sh
#            echo "press enter to go return."
#            read;;
#   "")
#      clear
#      return 0;;   # Allow 'enter' to return to the main menu
#       *) echo "invalid choice.. hit enter to try again"; read;;
#     esac
#   done
# }

display_downloads_menu() {
	while true; do
		clear
		display_ascii_art2
		echo "   │"
		echo "   └──  ${YELLOW}equtil${RESET}"
		echo "       ├── 󰈙 ${YELLOW}downloads${RESET}"
		echo "       │   ├──  󰈙 ${GREEN}wallpapers${RESET}"
		echo "       │   ├──  󰈙 ${GREEN}drivers${RESET}"
		echo "       │   ├──  󰈙 ${GREEN}configs${RESET}"
		echo "       └── 󰌑 return"
		echo " "
		read choice
		case $choice in
		"wallpapers")
			echo "wallpapers.."
			git clone https://github.com/BitterSweetcandyshop/wallpapers
			echo "Press enter to return."
			read
			;;

		"templates")
			lolcat "coming soon"
			curl -O "https://downloads.aliveai.net/hud.tar.gz"   # Replace the URL with the actual drivers URL
			echo "Press enter to return."
			read
			;;

		"macgpt")
			echo "${GREEN}coming soon..${RESET}"
			curl -O "https://downloads.aliveai.net"   # Replace the URL with the actual configs URL
			echo "Press enter to return."
			read
			;;
		*)
			clear
			return 0
			;; # Allow 'enter' to return to the main menu
		esac
	done
}


# Main menu function
main_menu() {
	while true; do
		clear
		display_log_output
		echo "type help to see cmds"
		echo "  ├──  ${YELLOW}install${RESET}"
		echo "  ├── 󰾆 ${YELLOW}optimize${RESET}"
		echo "  ├── 󰷉 ${YELLOW}docs${RESET}"
		echo "  ├── 󰷉 ${YELLOW}downloads${RESET}"
    echo "  ├── 󰷉 ${YELLOW}help${RESET}"
		echo "  └── 󰌑 exit "
		echo " "
		read -r choice
		case $choice in
		"install") display_install_menu ;;
		"speed") display_optimize_menu ;;
		"docs")  sh "${HOME}/installer.eq/docs/k.sh" ;;
		"download") display_downloads_menu ;;
		"help") display_help_menu ;;
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
