#!/usr/bin/env bash

sudo -v 

function purge_and_kill() {
  kill yabai
  kill zsh
  kill Dock
  kill Finder
	kill WindowServer
	purge 
}


# Run yabairc script
source "$HOME/.config/yabai/yabairc"
echo "yabairc CONFIG LOADED COMPLETE"
wait

# Run skhdrc script
sh ~/.config/skhd/skhdrc
echo "skhdrc CONFIG LOADED COMPLETE"
sleep 1

ioreg -l -w 0 | grep SecureInput
wait

sudo nvram boot-args=-arm64e_preview_abi


echo "Complete!"

