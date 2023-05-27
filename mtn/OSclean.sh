#!/bin/bash
#!/bin/bash

spinner() {
    local pid=$1
    local delay=0.75
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

echo "Starting cleanup process..."
(sleep 3) & spinner $! 

# Here goes your cleanup commands.

echo "Unmounting all volumes..."
sudo diskutil unmount force /Volumes/* || true

echo "Deleting all temporary files..."
sudo rm -rf /private/var/tmp/* || true
sudo rm -rf /private/tmp/* || true

echo "Deleting all caches..."
sudo rm -rf /System/Library/Caches/* || true
sudo rm -rf /Library/Caches/* || true
sudo rm -rf ~/Library/Caches/* || true

echo "Clearing NVRAM..."
sudo nvram -c

echo "Clearing ~/.cache"
sudo rm -rf ~/.cache/* || true

echo "Clearing specified items from the first script..."
sudo rm -rf ~/Library/Caches/* \
~/Library/Developer/Xcode/DerivedData/* \
~/Library/Developer/Xcode/Archives/* \
~/Library/Logs/* \
~/Library/Application\ Support/CrashReporter/* \
~/Library/Containers/com.apple.mail/Data/Library/Mail\ Downloads/* \
~/Library/Containers/com.apple.mail/Data/Library/Spotlight/* \
~/Library/Preferences/ByHost/com.apple.loginwindow.* \
~/Library/Preferences/com.apple.LaunchServices.* \
~/Library/Saved\ Application\ State/* \
~/Library/Audio/Plug-Ins/* \
~/Library/Application\ Support/com.apple.sharedfilelist/* \
~/Library/Containers/com.apple.Preview/Data/Library/Caches/* \
~/Library/Fonts/*.cache \
~/Desktop/*.screencapture \
~/.Trash/* \
|| true

sudo find ~ -type f -name ".DS_Store" -delete

echo "Clearing system logs and diagnostic reports..."
sudo rm -rf /Library/Logs/DiagnosticReports/* \
/Library/Logs/CrashReporter/* \
/Library/Logs/CoreDuet/* || true

sudo tmutil deletelocalsnapshots / || true

echo "Clearing specified items from the second script..."

sudo /usr/sbin/diskutil verifyVolume / || true

echo "Clearing User and System Caches..."
sudo rm -rf ~/Library/Caches/* \
/Library/Caches/* \
/System/Library/Caches/com.apple.kext.caches/* \
/private/var/folders/* \
/Library/Logs/DiagnosticReports/* || true

echo "Clearing Help Files Cache..."
sudo rm -rf /private/var/folders/zz/zy*/C/com.apple.helpd/Generated/* || true

echo "Clearing Saved Application States..."
sudo rm -rf ~/Library/Saved\ Application\ State/* \
~/Library/Containers/com.apple.mail/Data/Library/Saved\ Application\ State/* || true

echo "Clearing Application Logs..."
sudo rm -rf /Library/Logs/* \
~/Library/Logs/* || true

echo "Clearing Shell Logs..."
sudo rm -rf ~/Library/Application\ Support/com.apple.relaunch* || true

echo "Clearing Restored Sessions..."
sudo rm -rf /private/var/log/asl/*.asl || true

echo "Clearing System Archived Logs..."
sudo rm -rf /private/var/db/BootCaches/* || true

echo "Clearing Diagnostic Reports..."
sudo rm -rf /Library/Logs/DiagnosticReports/* \
~/Library/Logs/DiagnosticReports/* || true

echo "Clearing .DS_Store files..."
sudo find / -name ".DS_Store" -depth -exec rm {} \; || true

echo "Clearing volume positions on the desktop..."
rm -rf ~/Library/Preferences/com.apple.finder.plist

echo "Clearing mailbox in Mail..."
sudo rm -rf ~/Library/Mail/V7/* || true

echo "Clearing Spotlight index and launch services database..."
sudo mdutil -E / || true
sudo rm -rf /var/folders///-Caches-/com.apple.LaunchServices-* || true

echo "Clearing APFS snapshots..."
tmutil listlocalsnapshots / | awk -F. '/com.apple.TimeMachine/ {print $4}' | while read snap; do sudo tmutil deletelocalsnapshots $snap; done || true

echo "Verifying the file system structure..."
sudo /usr/sbin/diskutil verifyVolume / || true

echo "Cleanup completed."

echo "Unmounting volume..."
while [ -d "/Volumes/<volume-name>" ]
do
    echo "Waiting for volume to unmount..."
    sleep 1
done

echo "Clearing Spotlight index (again)..."
sudo mdutil -E / || true

echo "Cleanup completed."

