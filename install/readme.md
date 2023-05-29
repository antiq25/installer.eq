# Installation Script Readme

This installation script is designed to automate the installation of dependencies for dotfiles and Mac GPU libraries. It is recommended to run this script on a fresh installation of macOS. Please note the following instructions for a smooth installation process:

- **Location**: The installer must be run from your home directory (`$HOME`). Ensure that you are in the correct directory before starting the installer.

- **Starting the Installer**: Open a terminal and navigate to the `installer.eq` directory. Run the following command to start the installer:

   cd installer.eq && sh eq-util.sh

- **Option 1**: Selecting this option will install Brew and copy the `$PATH` into your `zprofile`. Please wait until the terminal prompts you to restart your system before proceeding.

- **Option 2**: Choosing this option will install all Brew formulae, taps, and casks. Additionally, it will run part 1 of the debloat scripts and provide you with the option to download "un1xp0rn" wallpapers and other cool things. Once the installation is complete, the script will prompt you to restart your computer.

## Installation Steps

If you choose Option 2, the installation process will follow these steps:

1. Install Brew formulae, taps, and casks.
2. Run part 1 of the debloat scripts.
3. Prompt for the download of "un1xp0rn" wallpapers and other cool things.
4. Restart your computer.

Please note that these steps are performed in sequential order.

We hope this installation script simplifies the setup process and enhances your experience with dotfiles and Mac GPU libraries. If you have any questions or encounter any issues, feel free to reach out for support.


## After Installation

1. Go into recovery env in boot and type  `csrutil disable` in terminal (this is necessary for yabai,skhd and others to work properly)
2. When booted again in desktop open terminal  `cd installer.eq && sh eq-util.sh`
3. Select 'Load .dotfiles & config'
4. After script has completed load terminal and type `brew services restart --all`

Enjoy!


4

