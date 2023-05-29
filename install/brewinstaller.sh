#!/bin/bash

echo "                 _            __        ____          ";
echo "  ___  ____     (_)___  _____/ /_____ _/ / /__  ____ _";
echo " / _ \/ __ \   / / __ \/ ___/ __/ __ \`/ / / _ \/ ___/ ";
echo "/  __/ /_/ /  / / / / (__  )  _/ /_/ / / /  __/ /     ";
echo "\___/\__, /  /_/_/ /_/____/\__/\__,_/_/_/\___/_/      ";
echo "       /_/                                            ";


# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew is not installed. Please install Homebrew (https://brew.sh/) before running this script."
    exit 1
fi

# Specify the path to your Brewfile
BREWFILE_PATH="$HOME/installer.eq/install/Brewfile"

# Check if the Brewfile exists
if [[ ! -f $BREWFILE_PATH ]]; then
    echo "Brewfile not found at $BREWFILE_PATH. Please update the script with the correct path."
    exit 1
fi

# Update Homebrew and install dependencies from Brewfile
brew update
brew bundle --file=$BREWFILE_PATH

# Check if the installation was successful
if [[ $? -eq 0 ]]; then
    echo "Brewfile installation completed successfully."
else
    echo "Brewfile installation encountered an error."
fi

sh ~/installer.eq/install/defaults.sh


