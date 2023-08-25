#!/bin/bash

# Download the latest Vulkan SDK from the provided URL
curl -o VulkanSDK.dmg https://sdk.lunarg.com/sdk/download/latest/mac/vulkan-sdk.dmg

# Mount the downloaded dmg file
hdiutil attach VulkanSDK.dmg

# Find the mounted location containing the name 'vulkan'
VULKAN_DIR=$(mount | grep -i 'vulkan' | awk '{print $3}')

if [ -z "$VULKAN_DIR" ]; then
    echo "Vulkan directory not found!"
    exit 1
fi

echo "Found Vulkan directory at $VULKAN_DIR"
cd "$VULKAN_DIR"

# Install Vulkan
sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root $HOME/VulkanSDK --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.core com.lunarg.vulkan.usr com.lunarg.vulkan.sdl2 com.lunarg.vulkan.glm com.lunarg.vulkan.volk com.lunarg.vulkan.vma

wait

echo "Vulkan SDK installed!"

# Optionally unmount the dmg and remove the downloaded file
hdiutil detach "$VULKAN_DIR"
rm VulkanSDK.dmg

