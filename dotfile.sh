#!/usr/bin/env bash

# Function to create symbolic links
create_symlink() {
  src=$1
  dest=$2

  # Check if the destination file already exists
  if [ -e "$dest" ]; then
    # Check for symlink loop
    if [ "$(readlink -f "$src")" == "$(readlink -f "$dest")" ]; then
      echo "Symlink loop detected. Skipping $dest."
      return
    fi

    echo "Removing existing file at $dest."
    rm -rf "$dest"
  fi

  echo "Creating symlink for $src at $dest"
  ln -s "$src" "$dest"
}

# Symlink hidden files from ~/dotfiles/elkabdots to ~/
shopt -s dotglob  # Enable globbing for hidden files
for file in ~/installer.eq/dotfiles/elkabdots/*; do
  filename=$(basename "$file")
  create_symlink "$file" "$HOME/$filename"
done
shopt -u dotglob  # Disable globbing for hidden files

# Symlink recursively all files and folders from ~/dotfiles/.config to ~/.config
for file in ~/installer.eq/dotfiles/.config/*; do
  filename=$(basename "$file")
  create_symlink "$file" "$HOME/.config/$filename"
done

# Symlink recursively all files and folders from ~/dotfiles/.local to ~/.local
for file in ~/installer.eq/dotfiles/.local/*; do
  filename=$(basename "$file")
  create_symlink "$file" "$HOME/.local/$filename"
done

echo "Dotfiles symlinked successfully."

