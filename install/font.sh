#!/bin/bash

# Define Global Functions for use
copy_directory_contents() {
  source_directory="$1"
  destination_directory="$2"

  # Check if the destination directory exists, if not create it
  if [ ! -d "$destination_directory" ]; then
    mkdir -p "$destination_directory"
  fi

  # Copy the contents of the source directory to the destination directory
  cp -R "$source_directory"/. "$destination_directory"
  echo "Copied contents of '$source_directory' to '$destination_directory'"
}

copy_fonts() {
  source_directory="$1"
  destination_directory="$2"

  # Check if the destination directory exists, if not create it
  if [ ! -d "$destination_directory" ]; then
    mkdir -p "$destination_directory"
  fi

  # Loop through font files in the source directory
  for font_file in "$source_directory"/*; do
    # Extract the filename from the font file path
    filename=$(basename "$font_file")
    # Check if the font file already exists in the destination directory
    if [ -f "$destination_directory/$filename" ]; then
      echo "Font file '$filename' already exists in '$destination_directory'"
    else
      # Copy the font file to the destination directory
      cp "$font_file" "$destination_directory"
      echo "Copied font file '$filename' to '$destination_directory'"
    fi
  done
}

# Ask to install config instead of just doing it.
read -p "Install Config? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  echo "Installing Wallpapers...."
  copy_directory_contents "$HOME/installer.eq/install/.config" "$HOME/.config"
elif [[ "$response" == "no" ]]; then
  echo "You chose 'no'."

else
  echo "Invalid response. Please enter 'yes' or 'no'"
fi

# Install Dotfiles
read -p "Install dotfiles? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  echo "Installing Wallpapers...."
  copy_directory_contents "$HOME/installer.eq/install/.dots" "$HOME"
elif [[ "$response" == "no" ]]; then
  echo "You chose 'no'."

else
  echo "Invalid response. Please enter 'yes' or 'no'"
fi

# Install helper for yabai + other configs from .local
read -p "Install local? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  echo "Moving ~/.local files...."
  copy_directory_contents "$HOME/installer.eq/install/.local" "$HOME/.local"
elif [[ "$response" == "no" ]]; then
  echo "You chose 'no'."

else
  echo "Invalid response. Please enter 'yes' or 'no'"
fi

# SYMLINKS
read -p "Symlink ~/.local/bin --> /usr/local/bin? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  echo "Symlinking ~/.local/bin to /usr/local/bin...."
  sudo ln -s "$HOME/.local/bin" /usr/local/bin
elif [[ "$response" == "no" ]]; then
  echo "You chose 'no'."

else
  echo "Invalid response. Please enter 'yes' or 'no'"
fi

# Fonts
read -p "Install fonts? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  # Copy the fonts to ~/Library/Fonts
  copy_fonts "$HOME/installer.eq/fonts" "$HOME/Library/Fonts"
else
  echo "Skipping font installation."
fi

# Download sketchybar font if it doesn't exist
sketchybar_font_file="$HOME/Library/Fonts/sketchybar-app-font.ttf"
if [ ! -f "$sketchybar_font_file" ]; then
  curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o "$sketchybar_font_file"
  echo "Downloaded sketchybar font to '$sketchybar_font_file'"
else
  echo "Skipped downloading sketchybar font as it already exists in '$sketchybar_font_file'"
fi

echo "Done"

read -p "Do you want to download wallpapers? (yes/no) " response

if [[ "$response" == "yes" ]]; then
  echo "Downloading Wallpapers...."
  git clone https://github.com/BitterSweetcandyshop/wallpapers
elif [[ "$response" == "no" ]]; then
  echo "You chose 'no'."

else
  echo "Invalid response. Please enter 'yes' or 'no'"
fi

echo "Installing AstroNvim"
git clone --depth 1 https://github.com/AstroNvim/AstroNvim "$HOME/.config/nvim"

echo "Configuration Complete."

