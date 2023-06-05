#!/bin/sh

function suyabai () {
  SHA256=$(shasum -a 256 /opt/homebrew/bin/yabai | awk "{print \$1;}")
  if [ -f "/private/etc/sudoers.d/yabai" ]; then
    sudo sed -i '' -e 's/sha256:[[:alnum:]]*/sha256:'${SHA256}'/' /private/etc/sudoers.d/yabai
  else
    echo "sudoers file does not exist yet"
  fi
}

function kill() {
  command pkill -9 "$@"
}

pkill zsh

yabai -m signal --add event=dock_did_restart action="suyabai"
wait

yabai --stop-service
wait


yabai --start-service


echo "done."
