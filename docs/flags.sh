echo '
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
sudo ./InstallVulkan.app/Contents/MacOS/InstallVulkan --root /opt/Homebrew/Cellar/VulkanSDK --accept-licenses --default-answer --confirm-command install com.lunarg.vulkan.core com.lunarg.vulkan.usr com.lunarg.vulkan.sdl2 com.lunarg.vulkan.glm com.lunarg.vulkan.volk com.lunarg.vulkan.vma
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
export VK_ICD_FILENAMES=/opt/homebrew/opt/vulkan-tools/lib/mock_icd/VkICD_mock_icd.json
export VK_LAYER_PATH=/opt/homebrew/opt/vulkan-extensionlayer/share/vulkan/explicit_layer.d

### libclc
To set up libclc, use the following commands:
export PKG_CONFIG_PATH="/opt/homebrew/opt/opencl-clhpp-headers/share/pkgconfig"
export CPPFLAGS="-I/opt/homebrew/opt/opencl-clhpp-headers/include"'
