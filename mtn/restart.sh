#!/bin/sh

echo "Running Refresh Script.. please wait.."
sleep 1

echo "Restarting Brew Files"

brew services restart --all

wait 2

#Reset NVRAM + Cache
sh ~/installer.eq/mtn/testclean.sh
# Wait for 2 seconds
echo "Waiting..."
sleep 2


sudo nvram boot-args=-arm64e_preview_abi

sleep 1
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

sleep 1

#Run Helper

make ~/.config/sketchybar/helper/helper

echo "helper initialized.."

sleep 2

ioreg -l -w 0 | grep SecureInput

echo "Complete!"

