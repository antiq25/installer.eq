export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/Users/anti/.cargo/bin:$PATH"
export PATH="${HOME}/miniforge3/bin:/opt/homebrew/anaconda3/bin:$PATH"
export PATH="${HOME}/bin:$PATH"
export PATH="${HOME}/.local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
# XDG settings
export XDG_CACHE_HOME="${HOME}/.cache"
export XDG_CONFIG_HOME="${HOME}/.config"
export XDG_DATA_HOME="${HOME}/.local/share"
export XDG_STATE_HOME="${HOME}/.local/state"


export EDITOR="$NVIM_PATH"
export VISUAL="$NVIM_PATH"


export VULKAN_SDK=$HOME/VulkanSDK/macOS
export PATH=$VULKAN_SDK/bin:$PATH
export DYLD_LIBRARY_PATH=$VULKAN_SDK/lib:$DYLD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/share/vulkan/explicit_layer.d
export VK_ICD_FILENAMES=$VULKAN_SDK/share/vulkan/icd.d/MoltenVK_icd.json
export VK_INSTANCE_LAYERS=VK_LAYER_KHRONOS_validation:VK_LAYER_LUNARG_api_dump

# micro settings

