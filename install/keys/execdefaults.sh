#!/usr/bin/bash 

message() {
	printf "[>>] %s\n" "$*" >&2
}

success_message() {
	if [ $? -eq 0 ]; then
		cecho "GREEN" "[>>] $1"
	fi
}

warning_message() {
	cecho "YELLOW" "[!!] $1"
}

cecho() {
	RED="\033[0;31m"
	GREEN="\033[0;32m"  # <-- [0 means not bold
	YELLOW="\033[1;33m" # <-- [1 means bold
	CYAN="\033[1;36m"
	# ... Add more colors if you like

	NC="\033[0m" # No Color

	# printf "${(P)1}${2} ${NC}\n" # <-- zsh
	printf "${!1}${2} ${NC}\n" # <-- bash
}

# @descri
source ~/installer.eq/install/keys/bin/change_defaults.sh

echo "Changing MACOS DEFAULTS!"

change_defaults

wait

echo "MACOS DEFAULTS CHANGED!"

source ~/installer.eq/install/keys/bin/change_symbolickeys.sh

echo "Changing MACOS SYMBOLIC KEYS!"

mac_change_symbolickeys

echo "MACOS SYMBOLIC KEYS CHANGED!"
