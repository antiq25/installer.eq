#!/bin/bash

# Define colors
GREEN="\033[0;32m"
NC="\033[0;35m" # No Color

# Prompt for password
sudo -v

# Function to display spinner
spinner() {
  local pid=$1
  local delay=0.1
  local spinstr='-\|/'
  local i=0

  printf "[working] ${spinstr:0:1}"
  while kill -0 $pid 2>/dev/null; do
    local spin=${spinstr:i++%${#spinstr}:1}
    printf "\b$spin"
    sleep ${delay}
  done
  printf "    \b\b\b\b" # Clear spinner
}

(
  # Flush DNS cache and restart mDNSResponder
  echo "${GREEN}Flushing DNS cache and restarting mDNSResponder...${NC}"
  sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder
  sleep 1

  # Rebuild Launch Services database and restart Finder
  echo "${GREEN}Rebuilding Launch Services database and restarting Finder...${NC}"
  sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && sudo killall Finder
  sleep 1

  # Define lscleanup function
  lscleanup() {
    echo "${GREEN}Cleaning up Launch Services database and restarting Finder...${NC}"
    sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && sudo killall Finder
    sleep 1
  }

  # Define emptytrash function
  emptytrash() {
    echo "${GREEN}Emptying Trash and cleaning up system caches...${NC}"
    sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sudo sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'
    sleep 1
  }

  # Empty Trash and clean up system caches
  emptytrash

  # Reindex Spotlight
  echo "${GREEN}Reindexing Spotlight...${NC}"
  sudo mdutil -E /
  sleep 1

  # Verify disk volume
  echo "${GREEN}Verifying disk volume...${NC}"
  sudo /usr/sbin/diskutil verifyVolume /
  sleep 1

  # Flush memory
  echo "${GREEN}Flushing memory...${NC}"
  sudo purge
  sleep 1

  lscleanup 
  sleep 1 

  # Delete .DS_Store files
  echo "${GREEN}Deleting .DS_Store files...${NC}"
  sudo find . -type f -name '*.DS_Store' -ls -delete
  sleep 1

  # Delete Time Machine local snapshots
  echo "${GREEN}Deleting Time Machine local snapshots...${NC}"
  tmutil listlocalsnapshots / | awk -F. '/com.apple.TimeMachine/ {print $4}' | while read snap; do sudo tmutil deletelocalsnapshots $snap; done
  sleep 1

  # Clean up Launch Services caches
  echo "${GREEN}Cleaning up Launch Services caches...${NC}"
  sudo rm -rf /var/folders/*/-Caches-/com.apple.LaunchServices-*
  sleep 1

  # Remove Mail cache
  echo "${GREEN}Removing Mail cache...${NC}"
  sudo rm -rf ~/Library/Mail/V7/*
  sleep 1

  # Clean up user caches
  echo "${GREEN}Cleaning up user caches...${NC}"
  sudo rm -rf ~/Library/Caches/*
  sleep 1

  # Clean up components cache
  echo "${GREEN}Cleaning up components cache...${NC}"
  sudo rm -rf ~/Library/Caches/com.apple.components.cache
  sleep 1

  # Clean up maintenance scripts
  echo "${GREEN}Cleaning up maintenance scripts...${NC}"
  sudo periodic daily weekly monthly
  sleep 1

  # Echo completion message
  echo "${GREEN}Cleanup Completed.${NC}"
) &

# Start the spinner with the PID of the cleanup process
spinner $!
