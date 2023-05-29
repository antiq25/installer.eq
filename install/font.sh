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

# Copy the contents of .config directory
copy_directory_contents "$HOME/installer.eq/install/.config" "$HOME/.config"

# Copy the contents of .dots directory
copy_directory_contents "$HOME/installer.eq/install/.dots" "$HOME"

# Copy the fonts to ~/Library/Fonts
copy_fonts "$HOME/installer.eq/fonts" "$HOME/Library/Fonts"

# Download sketchybar font if it doesn't exist
sketchybar_font_file="$HOME/Library/Fonts/sketchybar-app-font.ttf"
if [ ! -f "$sketchybar_font_file" ]; then
  curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v1.0.4/sketchybar-app-font.ttf -o "$sketchybar_font_file"
  echo "Downloaded sketchybar font to '$sketchybar_font_file'"
else
  echo "Skipped downloading sketchybar font as it already exists in '$sketchybar_font_file'"
fi


echo "settings permissions .. sudo chmod -R 755 $HOME/.config && sudo chmod -R +x $HOME/.config && sudo chown -R $(whoami) $HOME/.config"

sudo chmod -R 755 $HOME/.config && sudo chmod -R +x $HOME/.config && sudo chown -R $(whoami) $HOME/.config

sleep 1

echo "make helper"

make $HOME/.config/sketchybar/helper/helper

echo "done"

echo "symlinking helper to $HOME/.local/bin.."

ln -s $HOME/.config/sketchybar/helper/helper $HOME/.local/bin/helper

echo "done.."


