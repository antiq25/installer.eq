export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8" # < --- YOU'LL HAVE TO DELETE THIS LINE IN LINUX

export PATH="/usr/local/bin:/Users/anti/.local/bin:/Users/anti/bin:/Users/anti/miniforge3/bin:/opt/homebrew/anaconda3/bin:/opt/homebrew/bin:/Users/anti/.cargo/bin:/opt/homebrew/sbin:$PATH"


export HELPERDIR="${HOME}/.local/bin/helper"

# XDG settings
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"

export TERM="xterm-kitty"

# Define NVIM PATH
export NVIM_PATH="/opt/homebrew/bin/nvim"
export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"


# VULKAN (GFX) PATHS AND HEADERS
export VULKAN_SDK=$HOME/VulkanSDK/macOS
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_INSTANCE_LAYERS=VK_LAYER_KHRONOS_validation:VK_LAYER_LUNARG_api_dump
