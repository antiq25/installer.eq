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

1) Boot into Recovery mode (Dycl0n - just hold down powerbutton untill you see it say enterting system recovery mode)

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

   3. Execute the key by running: *change name of admin with name of your $HOME*

NAMEOFADMIN ALL = (root) NOPASSWD: sha256:[enterkeyhere] /opt/homebrew/bin/yabai --load-sa

   (--load-sa is just for yabai)

## Checking Secure Input
─────────────────────────────────────

##To check for Secure Input, run the following command:
ioreg -l -w 0 | grep SecureInput


##restore all permissions
tcutil reset All


## Flags
─────────────────────────────────────

Use the following flags to set up the environment for various dependencies:

### zlib
For compilers to find zlib, you may need to set the following environment variables:
export LDFLAGS="-L/opt/homebrew/opt/zlib/lib"
export CPPFLAGS="-I/opt/homebrew/opt/zlib/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/zlib/lib/pkgconfig"

### Kitty
To compile Kitty from source, use the following commands:
export CFLAGS="-I/opt/homebrew/Cellar/librsync/2.3.4/include"
export LDFLAGS="-L/opt/homebrew/Cellar/librsync/2.3.4/lib"
export LD_LIBRARY_PATH="/opt/homebrew/Cellar/librsync/2.3.4/lib:$LD_LIBRARY_PATH"
python3 -m pip install -r docs/requirements.txt && make docs
make app

### Vulkan
sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root /opt/Homebrew/Cellar --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.core com.lunarg.vulkan.usr com.lunarg.vulkan.sdl2 com.lunarg.vulkan.glm com.lunarg.vulkan.volk com.lunarg.vulkan.vma
brew link VulkanSDK
leave the rest.

### Bison
To set up Bison, use the following commands:
export LDFLAGS="-L/opt/homebrew/opt/bison/lib"
echo 'export PATH="/opt/homebrew/opt/bison/bin:$PATH"' >> ~/.zshrc

### ImageMagick
To configure ImageMagick, run the following commands:
echo 'export PATH="/opt/homebrew/opt/imagemagick@6/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/imagemagick@6/lib"
export CPPFLAGS="-I/opt/homebrew/opt/imagemagick@6/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/imagemagick@6/lib/pkgconfig"

### LLVM
To set up LLVM, run the following commands:
echo 'export PATH="/opt/homebrew/opt/llvm/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"

### Vulkan
To configure Vulkan, use the following commands:
export VK_ICD_FILENAMES=/opt/homebrew/opt/vulkan-tools/lib/mock_icd/VkICD_mock_icd.json
export VK_LAYER_PATH=/opt/homebrew/opt/vulkan-extensionlayer/share/vulkan/explicit_layer.d

### libclc
To set up libclc, use the following commands:
export PKG_CONFIG_PATH="/opt/homebrew/opt/opencl-clhpp-headers/share/pkgconfig"
export CPPFLAGS="-I/opt/homebrew/opt/opencl-clhpp-headers/include"

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



## AstroNVIM 
─────────────────────────────────────
git clone --depth 1 https://github.com/AstroNvim/AstroNvim ~/.config/nvim`

