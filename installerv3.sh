brew tap felixkratz/formulae
brew tap homebrew/bundle
brew tap homebrew/cask-fonts
brew tap homebrew/cask-versions
brew tap homebrew/services
brew tap koekeishiya/formulae
brew install abseil
brew install ack
brew install act
brew install aom
brew install gcc
brew install hdf5
brew install armadillo
brew install autoconf
brew install c-ares
brew install fmt
brew install grpc
brew install nlohmann-json
brew install spdlog
brew install bear
brew install bison
brew install boost
brew install btop
brew install cairo
brew install ccls
brew install cgl
brew install chafa
brew install cmake
brew install coreutils
brew install curl
brew install python@3.11
brew install dooit
brew install eslint
brew install exa
brew install findutils
brew install fish
brew install fontforge
brew install gd
brew install gh
brew install ghostscript
brew install git
brew install glfw
brew install glslang
brew install gnu-sed
brew install gnuplot
brew install gnutls
brew install go
brew install gsl
brew install ifstat
brew install libomp
brew install imagemagick
brew install imagemagick@6
brew install jq
brew install lazygit
brew install libclc
brew install libice
brew install librsync
brew install libsixel
brew install libsm
brew install libtermkey
brew install libvterm
brew install libxaw
brew install libxft
brew install libxinerama
brew install llvm
brew install luajit
brew install luv
brew install macos-term-size
brew install make
brew install mas
brew install mesa
brew install meson
brew install molten-vk
brew install msgpack
brew install neofetch
brew install neovim
brew install opencl-clhpp-headers
brew install openjdk
brew install openssl@3
brew install pcre
brew install pkg-config
brew install putty
brew install pyright
brew install python@3.10
brew install python@3.8
brew install rename
brew install ripgrep
brew install rlwrap
brew install rust
brew install switchaudio-osx
brew install tmux
brew install tree
brew install vlang
brew install wget
brew install wireguard-go
brew install xterm
brew install zsh
brew tap felixkratz/formulae
brew install --HEAD fnnn
brew install --HEAD fskhd
brew install --HEAD sketchybar
brew tap koekeishiya/formulae
brew install --HEAD yabai

brew install --cask 1password-cli
brew install --cask alfred
brew install --cask alt-tab
brew install --cask anaconda
brew install --cask betterdiscord-installer
brew install --cask cleanshot
brew install --cask discord
brew install --cask font-hack-nerd-font
brew install --cask hex-fiend
brew install --cask libreoffice
brew install --cask lulu
brew install --cask machoview
brew install --cask meetingbar
brew install --cask monitorcontrol
brew install --cask moonlight
brew install --cask mumble
brew install --cask powershell
brew install --cask sf-symbols
brew install --cask sloth
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask vlc

code --install-extension abusaidm.html-snippets
code --install-extension DanielSanMedium.dscodegpt
code --install-extension JakeWilson.vscode-picture
code --install-extension l7ssha.tag-inserter
code --install-extension lolkush.quickstart
code --install-extension mgmcdermott.vscode-language-babel
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-vscode.js-debug-nightly
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension ritwickdey.LiveServer
code --install-extension sidthesloth.html5-boilerplate
code --install-extension TaodongWu.ejs-snippets
code --install-extension VisualStudioExptTeam.intellicode-api-usage-examples
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension walkme.HTML5-extension-pack
code --install-extension xabikos.JavaScriptSnippets
code --install-extension yuritoledo.outrun-space

read -p "installer complete, change apple config? (Yes/No): " choice

if [[ $choice == "Yes" || $choice == "yes" ]]; then
    sh $HOME/installer.eq/install/defaults.sh 
elif [[ $choice == "No" || $choice == "no" ]]; then
    echo "Closing window"
else
    echo "Invalid choice"
fi


read -p "inject dotfiles + load fonts? (yes/no): " choice

if [[ $choice == "Yes" || $choice == "yes" ]]; then
    sh $HOME/installer.eq/install/font.sh
elif [[ $choice == "No" || $choice == "no" ]]; then
    echo "Closing window"
else
    echo "Invalid choice"
fi
