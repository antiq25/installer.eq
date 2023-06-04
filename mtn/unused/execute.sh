#!/bin/bash

# Set boot args with sudo
sudo nvram boot-args=-arm64e_preview_abi

# Wait for 2 seconds
echo "Waiting..."
sleep 2

# Run yabairc script
sh ~/.config/yabai/yabairc
echo "yabairc CONFIG LOADED COMPLETE"

# Wait for 1 second
sleep 1

# Run sketchybarrc script
sh ~/.config/sketchybar/sketchybarrc
echo "sketchybarrc CONFIG LOADED COMPLETE"

# Wait for 1 second
sleep 1

# Run skhdrc script
sh ~/.config/skhd/skhdrc
echo "skhdrc CONFIG LOADED COMPLETE"

# Wait for 1 second
sleep 1

# Restart all Brew services
brew services restart --all

# Done!
echo "Complete!"

