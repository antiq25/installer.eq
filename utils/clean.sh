#!/bin/bash

# Unmount all volumes
echo "Unmounting all volumes..."
sudo diskutil unmount force /Volumes/*

# Delete all temporary files
echo "Deleting all temporary files..."
sudo rm -rf /private/var/tmp/*
sudo rm -rf /private/tmp/*

# Delete all caches
echo "Deleting all caches..."
sudo rm -rf /System/Library/Caches/*
sudo rm -rf /Library/Caches/*
sudo rm -rf ~/Library/Caches/*

# Clear NVRAM
echo "Clearing NVRAM..."
sudo nvram -c

# Function to display progress
show_progress() {
    while true; do
        printf "."
        sleep 1
    done
}

# Clear specified items from the first script
echo "Clearing specified items from the first script..."
show_progress &
progress_pid=$!
rm -rf ~/Library/Caches/* && \
rm -rf ~/Library/Developer/Xcode/DerivedData/* && \
rm -rf ~/Library/Developer/Xcode/Archives/* && \
rm -rf ~/Library/Logs/* && \
rm -rf ~/Library/Application\ Support/CrashReporter/* && \
rm -rf ~/Library/Containers/com.apple.mail/Data/Library/Mail\ Downloads/* && \
rm -rf ~/Library/Containers/com.apple.mail/Data/Library/Spotlight/* && \
rm -rf ~/Library/Preferences/ByHost/com.apple.loginwindow.* && \
rm -rf ~/Library/Preferences/com.apple.LaunchServices.* && \
rm -rf ~/Library/Saved\ Application\ State/* && \
rm -rf ~/Library/Audio/Plug-Ins/* && \
rm -rf ~/Library/Application\ Support/com.apple.sharedfilelist/* && \
rm -rf ~/Library/Containers/com.apple.Preview/Data/Library/Caches/* && \
rm -rf ~/Library/Fonts/*.cache && \
rm -rf ~/Desktop/*.screencapture && \
rm -rf ~/.Trash/* && \
find ~ -type f -name ".DS_Store" -delete && \
cancel_all_print_jobs -a -x && \
kill $progress_pid

# Clear system logs and diagnostic reports (requires admin privileges)
echo "Clearing system logs and diagnostic reports..."
show_progress &
progress_pid=$!
sudo rm -rf /Library/Logs/DiagnosticReports/* && \
sudo rm -rf /Library/Logs/CrashReporter/* && \
sudo rm -rf /Library/Logs/CoreDuet/* && \
sudo tmutil deletelocalsnapshots / && \
kill $progress_pid

# Clear specified items from the second script
echo "Clearing specified items from the second script..."
show_progress &
progress_pid=$!
# Verify File System Structure
sudo /usr/sbin/diskutil verifyVolume / && \
# Clear User and System Caches
echo "Clearing User and System Caches..." && \
du -sh ~/Library/Caches/* && \
sudo rm -rf ~/Library/Caches/* && \
du -sh /Library/Caches/* && \
sudo rm -rf /Library/Caches/* && \
# Clear Components Cache
echo "Clearing Components Cache..." && \
sudo rm -rf /System/Library/Caches/com.apple.kext.caches/* && \
# Cancel CUPS Jobs
echo "Canceling CUPS Jobs..." && \
sudo cancel -a && \
# Clear Application Jobs
echo "Clearing Application Jobs..." && \
du -sh /private/var/folders/* && \
sudo rm -rf /private/var/folders/* && \
du -sh /Library/Logs/DiagnosticReports/* && \
sudo rm -rf /Library/Logs/D


echo "Clearing Help Files Cache..." &&
sudo rm -rf /private/var/folders/zz/zy*/C/com.apple.helpd/Generated/* && \

Clear Saved Application States

echo "Clearing Saved Application States..." &&
du -sh ~/Library/Saved\ Application\ State/* &&
sudo rm -rf ~/Library/Saved\ Application\ State/* &&
du -sh ~/Library/Containers/com.apple.mail/Data/Library/Saved\ Application\ State/* &&
kill $progress_pid

Clear Application Logs

show_progress &
progress_pid=$!
echo "Clearing Application Logs..."
du -sh /Library/Logs/*
sudo rm -rf /Library/Logs/*
du -sh ~/Library/Logs/*
sudo rm -rf ~/Library/Logs/*

Clear Shell Logs

echo "Clearing Shell Logs..."
show_progress &
progress_pid=$!
du -sh ~/Library/Application\ Support/com.apple.relaunch*
sudo rm -rf ~/Library/Application\ Support/com.apple.relaunch*
kill $progress_pid

Clear Restored Sessions

echo "Clearing Restored Sessions..."
du -sh /private/var/log/asl/*
sudo rm -rf /private/var/log/asl/*.asl

Clear System Archived Logs

echo "Clearing System Archived Logs..."
du -sh /private/var/db/BootCaches/*
sudo rm -rf /private/var/db/BootCaches/*

Clear Diagnostic Reports

echo "Clearing Diagnostic Reports..."
du -sh /Library/Logs/DiagnosticReports/*
sudo rm -rf /Library/Logs/DiagnosticReports/*
du -sh ~/Library/Logs/DiagnosticReports/*
sudo rm -rf ~/Library/Logs/DiagnosticReports/*

Clear all .DS_Store files

echo "Clearing .DS_Store files..."
find / -name ".DS_Store" -depth -exec rm {} ;

Clear volume positions on the desktop

echo "Clearing volume positions on the desktop..."
rm -rf ~/Library/Preferences/com.apple.finder.plist

Clear mailbox in Mail

echo "Clearing mailbox in Mail..."
rm -rf ~/Library/Mail/V7/*

Clear Spotlight index and launch services database

echo "Clearing Spotlight index and launch services database..."
sudo mdutil -E /
sudo rm -rf /var/folders///-Caches-/com.apple.LaunchServices-*

Clear APFS snapshots

echo "Clearing APFS snapshots..."
tmutil listlocalsnapshots / | awk -F. '/com.apple.TimeMachine/ {print $4}' | while read snap; do tmutil deletelocalsnapshots $snap; done

Verify the file system

echo "Verifying the file system structure..."
sudo /usr/sbin/diskutil verifyVolume /

echo "Cleanup completed."

Check if the volume is unmounted

while [ -d "/Volumes/<volume-name>" ]
do
echo "Waiting for volume to unmount..."
sleep 1
done

Clear Spotlight index (again)

sudo mdutil -E /

echo "Cleanup completed."

sql

