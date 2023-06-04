#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Wait for 5 seconds after Homebrew installation
echo "Waiting for Homebrew to finish installation..."
sleep 5

# Add Homebrew to the shell environment
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile

# Close the current terminal window
osascript -e 'tell application "Terminal" to close first window'

# Open a new terminal window
osascript -e 'tell application "Terminal" to do script ""'

echo "Homebrew installed. The terminal has been restarted to activate 'brew'."
