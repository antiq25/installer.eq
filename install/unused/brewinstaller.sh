#!/bin/bash

# Install Homebrew if it's not already installed
if ! command -v brew >/dev/null 2>&1; then
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# List of taps to install
taps=(

homebrew/bundle
homebrew/cask-fonts
FelixKratz/formulae
)

# List of formulae to install
formulae=(
vulkan-tools
vulkan-headers
vulkan-loader
librsync
go
abseil
aom
bear
brotli
btop
c-ares
ca-certificates
cairo
chafa
coreutils
dooit
eslint
exa
findutils
fish
fmt
fnnn
fontconfig
freetype
fribidi
gcc
gd
gdk-pixbuf
gettext
gh
ghostscript
giflib
git
glib
gmp
gnuplot
gnutls
graphite2
grpc
harfbuzz
hdf5
highway
icu4c
imagemagick
imath
isl
jasper
jbig2dec
jpeg-turbo
jpeg-xl
jq
lazygit
libaec
libavif
libcerf
libde265
libevent
libgit2
libheif
libice
libidn
libidn2
liblqr
libmpc
libnghttp2
libomp
libpng
libraw
librsvg
libsm
libssh2
libtasn1
libtermkey
libtiff
libtool
libunistring
libuv
libvmaf
libvterm
libx11
libxau
libxaw
libxcb
libxdmcp
libxext
libxft
libxinerama
libxmu
libxpm
libxrender
libxt
libyaml
little-cms2
lua
luajit
luv
lz4
lzo
m4
macos-term-size
mpdecimal
mpfr
msgpack
ncurses
neofetch
neovim
nettle
nlohmann-json
node
oniguruma
openexr
openjdk
openjpeg
openssl@1.1
openssl@3
p11-kit
pango
pcre
pcre2
pixman
pkg-config
protobuf
putty
pygments
pyright
python-typing-extensions
python@3.11
pyyaml
qt@5
re2
readline
rust
screenresolution
shared-mime-info
six
sketchybar
spdlog
sqlite
svim
switchaudio-osx
tmux
tree
tree-sitter
unbound
unibilium
utf8proc
virtualenv
webp
wget
x265
xorgproto
xterm
xz
zsh
zstd
fontforge
fyabai
fskhd
ack
act
)


# List of casks to install
casks=(
1password-cli
alacritty
alfred
authy
betterdiscord-installer
caprine
cutter
discord
electron
firefox
grammarly
hammerspoon
inkscape
lulu
meetingbar
monitorcontrol
moonlight
powershell
sf-symbols
skim
sloth
spotify
stats
thunderbird
visual-studio-code
xquartz
fnnn --HEAD
    
)

# Install each tap
for tap in "${taps[@]}"; do
	if brew tap | grep -q "$tap"; then
		echo "$tap already tapped, skipping"
	else
		echo "Tapping $tap"
		brew tap "$tap"
	fi
done

# Install each formula
for formula in "${formulae[@]}"; do
	if brew list "$formula" >/dev/null 2>&1; then
		echo "$formula already installed, skipping"
	else
		if [[ "$formula" == "fskhd" ]]; then
			echo "Installing $formula --HEAD"
			brew install --HEAD FelixKratz/formulae/fskhd
		elif [[ "$formula" == "fyabai" ]]; then
			echo "Installing $formula --HEAD"
			brew install --HEAD FelixKratz/formulae/fyabai
		elif [[ "$formula" == "sketchybar" ]]; then
			echo "Installing $formula --HEAD"
			brew install --HEAD FelixKratz/formulae/sketchybar
		else
			echo "Installing $formula"
			brew install "$formula"
		fi
	fi
done

# Install each cask
for cask in "${casks[@]}"; do
	if brew list --cask "$cask" >/dev/null 2>&1; then
		echo "$cask already installed, skipping"
	else
		echo "Installing $cask"
		brew install --cask "$cask"
	fi
done

sh defaults.sh
