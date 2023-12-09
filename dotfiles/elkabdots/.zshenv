export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"
export VISUAL="nvim"
export EDITOR="$VISUAL"
export MICRO_TRUECOLOR="1"
export GIT_EDITOR='nvim'

export PATH="/usr/local/bin:/Users/a/.local/bin:/Users/a/bin:/Users/a/miniforge3/bin:/opt/homebrew/anaconda3/bin:/opt/homebrew/bin:/Users/a/.cargo/bin:/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/binutils/bin:$PATH"


if [[ -f /opt/homebrew/bin/brew ]]; then
	eval "$("/opt/homebrew/bin/brew" shellenv)"
fi



export HELPERDIR="${HOME}/.local/bin/helper"

# XDG settings
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"



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

# micro settings
export MICRO_TRUECOLOR="1"
export BASH_SILENCE_DEPRECATION_WARNING=1

# Source the cargo environment
if [[ -f "$CARGO_ENV_PATH" ]]; then
  source "$CARGO_ENV_PATH"
fi
