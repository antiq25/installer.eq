echo '
 ___  __   ___ ____
(    \/  \ / __) ___)
 ) D (  O | (__\___ \
(____/\__/ \___|____/
────────────────────
### Prior to Installation
──────────────────────────────────────
You must run this config with System Integrity Disabled.

To do so follow the following steps

1) Boot into Recovery mode (Dycl0n - just hold down powerbutton until you see it say enterting system recovery mode)

2) Go to terminal and type csrutil disable

3) Restart. Once loaded to desktop type

sudo nvram boot-args=-arm64e_preview_abi

4) Restart computer - then you are ready to run the script!!!

you can bind this script to an alias for easy access in terminal

This README provides instructions and key commands for various tasks and installations on macOS.

## Generating Keys
─────────────────────────────────────

To generate a key for a specific `/bin/`, follow these steps:

1. Run the following command to generate the key:
   shasum -a 256 $(which yabai) | awk '{print $1}'

2. To write the key into the source, execute the following command with administrative privileges:
   sudo visudo -f /private/etc/sudoers.d/yabai

3. Write this into the prompt that gets displayed when running the previous command ^ 

   (put the name of your home directory) ALL = (root) NOPASSWD: sha256:[enterkeyhere] /opt/homebrew/bin/yabai --load-sa

   (--load-sa is just for yabai)

## Checking Secure Input
─────────────────────────────────────

##To check for Secure Input, run the following command:
ioreg -l -w 0 | grep SecureInput


##restore all permissions
tccutil reset All


## Git Repositories
─────────────────────────────────────

Clone the following repositories using the provided commands:

- Kitty:
  git clone https://github.com/kovidgoyal/kitty

- Dotfiles:
  git clone https://github.com/FelixKratz/dotfiles
  git clone https://github.com/khaneliman/dotfiles

- Fastfetch:
  git clone https://github.com/LinusDierheimer/fastfetch

## Keys
─────────────────────────────────────

Here are some keys for specific applications:

- Cleanshot X:
  ZOKSZFMI-RX1G0AGT-FLXPGIQS-IXMLIMIW

- Sound Source:
  ZLAT-YY9Z-QQMA-46YM-DYCJ-JAJN-GUV3-FZCY-3H4V

- Active Dock2:
  GWU2-N6H7-8WSK-57ZD



## How to Properly Symlink
─────────────────────────────────────
ln -s directory/file --- > directory/file

example : ln -s ~/kitty/kitty/launcher/kitty /opt/homebrew/bin/kitty 



## AstroNVIM 
─────────────────────────────────────
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim'
