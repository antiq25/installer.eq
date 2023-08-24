#!/bin/bash

# @description Print a warning message
# @arg $* Message content
warning_message() {
    printf "[!!] %s
" "$*" >&2
}

# @description Print a success message
# @arg $* Message content
success_message() {
    printf "[✔] %s
" "$*" >&2
}

# @description Recursively create symlinks for all files and directories inside the source directory
# @arg $1 Source directory
# @arg $2 Destination directory
create_symlinks() {
    local source=$1
    local destination=$2
    local file=""
    local target=""

    for file in "$source"/*; do
        target="$destination/$(basename "$file")"
        if [[ -d "$file" ]]; then
            # Create symlink for directories
            mkdir -p "$target" # Create the target directory first
            create_symlinks "$file" "$target" # Recursively create symlinks inside the directory
        elif [[ ! -e "$target" ]]; then
            # Create symlink for files if it doesn't exist in the destination
            ln -sf "$file" "$target"
            success_message "Created symlink for \"$file\" in \"$destination\"."
        else
            warning_message "File \"$target\" already exists. Skipping symlink creation."
        fi
    done
}

# The directory where your dotfiles repository is located.
DOTFILES_DIR="$HOME/.dotfiles"

# The destination directory where you want to create the symlinks.
DESTINATION_DIR="$HOME"

# Create symlinks for the contents of the .config directory
create_symlinks "$DOTFILES_DIR/.config" "$DESTINATION_DIR/.config"

# Create symlinks for the contents of the .local directory
create_symlinks "$DOTFILES_DIR/.local" "$DESTINATION_DIR/.local"
