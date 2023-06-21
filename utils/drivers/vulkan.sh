#!/bin/sh 
echo "Downloading Vulkan SDK!"


curl -O https://sdk.lunarg.com/sdk/download/latest/mac/vulkan-sdk.dmg

wait 

open vulkan-sdk.dmg

wait

#Navigate to VulkanSDK and then run the executable... 
cd /Volumes/VulkanSDK
#install vulkan 
sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root $HOME/VulkanSDK --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.core com.lunarg.vulkan.usr com.lunarg.vulkan.sdl2 com.lunarg.vulkan.glm com.lunarg.vulkan.volk com.lunarg.vulkan.vma
wait


echo "Vulkan SDK installed!"

