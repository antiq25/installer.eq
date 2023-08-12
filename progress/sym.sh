#!/bin/bash

# Define the source directory (your dotfiles repository)
src="$HOME/installer.eq/updates/"

# Define the target directory (your home directory)
target="$HOME"

# Check if the source directory exists
if [ ! -d "$src" ]; then
    echo "Error: Source directory does not exist: $src"
    exit 1
fi

# Check if the target directory exists
if [ ! -d "$target" ]; then
    echo "Error: Target directory does not exist: $target"
    exit 1
fi

# Get all files from the source directory
files=$(ls -A1 "$src")

# Loop over all files
for file in $files; do
    # If the file exists in the source directory
    if [ -e "${src}/${file}" ]; then
        # Create a new symlink in the target directory, forcing the link creation
        ln -sf "${src}/${file}" "${target}/${file}"
        if [ $? -ne 0 ]; then
            echo "Error: Failed to create symlink for ${src}/${file}"
            exit 1
        fi
    else
        echo "Warning: File does not exist in source directory: ${src}/${file}"
    fi
done

echo "All symlinks created successfully."

