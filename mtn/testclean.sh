#!/bin/bash

sudo -v

spinner()
{
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'

    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done

    printf "    \b\b\b\b"
}

# Define color codes
YELLOW=$(tput setaf 3)
GREEN=$(tput setaf 2)
RESET=$(tput sgr0)

# Define cleanup tasks
declare -a tasks=("${YELLOW}EQ Utilities Menu${RESET}"
                  "${YELLOW}Deleting all temporary files..."
                  "${YELLOW}Deleting all caches..."
                  "${YELLOW}Clearing NVRAM..."
                  "${YELLOW}Clearing ~/.cache"
                  "${YELLOW}Clearing specified items from the first script..."
                  "${YELLOW}Clearing system logs and diagnostic reports..."
                  "${YELLOW}Clearing specified items from the second script..."
                  "${YELLOW}Verifying the file system structure..."
                  "${YELLOW}Clearing Spotlight index..."
                  "${YELLOW}Unmounting volume..."
                  "${YELLOW}Clearing Spotlight index again...")

# Define cleanup commands corresponding to each task
declare -a commands=("sudo diskutil unmount force /Volumes/*"
                     "sudo rm -rf /private/var/tmp/* /private/tmp/*"
                     "sudo rm -rf /System/Library/Caches/* /Library/Caches/* ~/Library/Caches/*"
                     "sudo nvram -c"
                     "sudo rm -rf ~/.cache/*"
                     "sudo rm -rf ~/Library/Caches/* ~/Library/Developer/Xcode/DerivedData/*"
                     "sudo rm -rf /Library/Logs/DiagnosticReports/* /Library/Logs/CrashReporter/*"
                     "sudo /usr/sbin/diskutil verifyVolume /"
                     "sudo rm -rf ~/Library/Caches/*"
                     "sudo rm -rf /Library/Caches/*"
                     "sudo rm -rf /System/Library/Caches/com.apple.kext.caches/*"
                     "sudo rm -rf /private/var/folders/*"
                     "sudo rm -rf /Library/Logs/DiagnosticReports/*"
                     "sudo rm -rf /private/var/folders/zz/zy*/C/com.apple.helpd/Generated/*"
                     "sudo rm -rf ~/Library/Saved\\ Application\\ State/*"
                     "sudo rm -rf ~/Library/Containers/com.apple.mail/Data/Library/Saved\\ Application\\ State/*"
                     "sudo rm -rf /Library/Logs/*"
                     "sudo rm -rf ~/Library/Logs/*"
                     "sudo rm -rf ~/Library/Application\\ Support/com.apple.relaunch*"
                     "sudo rm -rf /private/var/log/asl/*.asl"
                     "sudo rm -rf /private/var/db/BootCaches/*"
                     "sudo rm -rf /Library/Logs/DiagnosticReports/*"
                     "sudo rm -rf ~/Library/Logs/DiagnosticReports/*"
                     "sudo find / -name \".DS_Store\" -exec rm {} \\;"
                     "rm -rf ~/Library/Preferences/com.apple.finder.plist"
                     "rm -rf ~/Library/Mail/V7/*"
                     "sudo mdutil -E /"
                     "sudo rm -rf /var/folders///-Caches-/com.apple.LaunchServices-*"
                     "tmutil listlocalsnapshots / | awk -")

# Loop over each task and run corresponding command
for i in "${!tasks[@]}"; do
    echo -e "${tasks[$i]}"
    echo -e "${GREEN}Running command: ${commands[$i]}${RESET}"
    ( ${commands[$i]} &>/dev/null ) & spinner $!
    echo
done

echo "Cleanup completed."
