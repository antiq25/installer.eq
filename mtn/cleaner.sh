#!/bin/bash

# Function to display progress
show_progress() {
    total_tasks="$1"
    completed_tasks=0
    while [[ $completed_tasks -lt $total_tasks ]]; do
        percentage=$(( (completed_tasks * 100) / total_tasks ))
        printf "Progress: %d%%\r" "$percentage"
        sleep 1
        completed_tasks=$((completed_tasks + 1))
    done
}

# Function to stop progress
stop_progress() {
    if [[ -n "$1" ]]; then
        kill "$1"
        wait "$1" 2>/dev/null
    fi
}

# Unmount all volumes
echo "Unmounting all volumes..."
sudo diskutil unmountDisk force /Volumes/*

# Delete all temporary files
echo "Deleting all temporary files..."
sudo rm -rf /private/var/tmp/*
sudo rm -rf /private/tmp/*

echo "CLEARING NVRAM"
sudo nvram -c

# Delete all caches
echo "Deleting all caches..."
sudo rm -rf /System/Library/Caches/*
sudo rm -rf /Library/Caches/*
sudo rm -rf ~/Library/Caches/*

# Define the tasks
tasks=(
    "Clearing specified items from the first script"
    "Clearing system logs and diagnostic reports"
    "Clearing specified items from the second script"
    "Clearing Spotlight index and launch services database"
)

# Count the total number of tasks
total_tasks=${#tasks[@]}

# Execute the tasks
for ((i = 0; i < total_tasks; i++)); do
    echo "${tasks[i]}..."
    show_progress "$total_tasks" &
    progress_pid=$!

    # Execute the task
    case $i in
        0)
            # Clear specified items from the first script
            sudo rm -rf ~/Library/Caches/*
            # Add other commands related to task 0 here
            ;;
        1)
            # Clear system logs and diagnostic reports
            sudo rm -rf /Library/Logs/DiagnosticReports/*
            # Add other commands related to task 1 here
            ;;
        2)
            # Clear specified items from the second script
            sudo rm -rf ~/Library/Caches/*
            # Add other commands related to task 2 here
            ;;
        3)
            # Clear Spotlight index and launch services database
            sudo mdutil -E /
            # Add other commands related to task 3 here
            ;;
    esac

    stop_progress "$progress_pid"
done

echo "Cleanup completed."

