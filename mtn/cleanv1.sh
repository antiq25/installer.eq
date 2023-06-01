#!/bin/bash

# Define colors
GREEN="\033[0;32m"
NC="\033[0m" # No Color

# ASCII art
echo   "${GREEN}
              _   _           _              
             | | (_)         (_)             
   ___  _ __ | |_ _ _ __ ___  _ _______ _ __ 
  / _ \| '_ \| __| | '_ \` _ \| |_  / _ \ '__|
 | (_) | |_) | |_| | | | | | | |/ /  __/ |   
  \___/| .__/ \__|_|_| |_| |_|_/___\___|_|      
       | |      https://eclectiq.cc                      
       |_|                                   
${NC}"

# Request sudo privileges upfront
sudo -v

# Initialize progress
total_tasks=18
completed_tasks=0

spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='⠏⠛⠹⠼⠶⠧⠏⠛⠹⠼⠶⠧'
    local infotext=$2
    local columns=$(tput cols)
    local spinlen=10  # Limit the spinner length

    while kill -0 $pid 2>/dev/null; do
        local current_progress=$((completed_tasks * 100 / total_tasks))
        local current_progress_steps=$((current_progress / 10))
        local remaining_space=$((spinlen - current_progress_steps))
        local spinner_text="${spinstr:0:$current_progress_steps}"

        # Ensure spinner fits into terminal
        if [[ $remaining_space -gt 0 ]]; then
            printf "\r${GREEN}[%-${spinlen}s] %3d%% ${NC}" "$spinner_text" "$current_progress"  # Added a space after the percentage sign
        else
            printf "\r${GREEN}[%s] %3d%% ${NC}" "$spinner_text" "$current_progress"  # Added a space after the percentage sign
        fi

        spinstr=${spinstr#?}${spinstr%"${spinstr#?}"}

        sleep "$delay"
    done
    printf "\r[%-${spinlen}s] %3d%% " "" "$current_progress"  # Clear spinner and add a space after the percentage sign
    echo
}

tasks=(
  "Flushing DNS cache and restarting mDNSResponder:sudo dscacheutil -flushcache && sudo killall -HUP mDNSResponder; sleep 1"
  "Flushing memory:sudo purge; sleep 1"
  "Emptying Trash and cleaning up system caches:sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sudo sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'; sleep 1"
  "Deleting .DS_Store files:sudo find . -type f -name '*.DS_Store' -ls -delete; sleep 1"
  "Deleting Time Machine local snapshots:tmutil listlocalsnapshots / | awk -F. '/com.apple.TimeMachine/ {print \$4}' | while read snap; do sudo tmutil deletelocalsnapshots \$snap; done; sleep 1"
  "Removing Mail cache:sudo rm -rf ~/Library/Mail/V7/*; sleep 1"
  "Cleaning up user caches:sudo rm -rf ~/Library/Caches/*; sleep 1"
  "Cleaning up components cache:sudo rm -rf ~/Library/Caches/com.apple.components.cache; sleep 1"
  "Removing CUPS jobs:sudo cancel -a -x; sleep 1"
  "Deleting APFS snapshots:sudo tmutil listlocalsnapshotdates | grep -v '^\s*$' | while read snapshot; do sudo tmutil deletelocalsnapshots \"\$snapshot\"; done; sleep 1"
  "Removing .cache directory:sudo rm -rfv ~/.cache; sleep 1"
  "Verifying disk volume:sudo /usr/sbin/diskutil verifyVolume /; sleep 1"
  "Verifying file system:sudo fsck -fy; sleep 1"
  "Cleaning up Launch Services database and restarting Finder:sudo /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && sudo killall Finder; sleep 1"
  "Cleaning up Launch Services caches:sudo rm -rf /var/folders/*/-Caches-/com.apple.LaunchServices-*; sleep 1"
  "Removing items from the history menu:defaults delete com.apple.recentitems RecentApplications; defaults delete com.apple.recentitems RecentDocuments; defaults delete com.apple.recentitems RecentServers; sleep 1"
  "Running Apple's maintenance scripts:sudo periodic daily weekly monthly; sleep 1"
  "Reindexing Spotlight:sudo mdutil -E /; sleep 1"
)

# Execute the tasks with spinner
for task in "${tasks[@]}"; do
    task_description="${task%%:*}"
    task_command="${task#*:}"
    
    echo "${GREEN}Executing: ${task_description}...${NC}"
    
    (eval "${task_command}") & spinner $!
    completed_tasks=$((completed_tasks + 1))
done

echo "${GREEN}Cleanup Completed.${NC}"

