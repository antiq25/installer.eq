#!/usr/bin/env bash

sudo -v

source ~/.functions 

sudo yabai --load-sa


# Run yabairc script
cd ~/.config/yabai

./yabairc 


cd ~/.config/skhd
./skhdrc


ioreg -l -w 0 | grep SecureInput
wait


sudo nvram boot-args=-arm64e_preview_abi


echo "Complete!"



yabai --restart-service

skhd --restart-service

