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
	abseil
	aom
	bear
	brotli
	btop
	c-ares
	ca-certifica
	cairo
	chafa
	coreutils
	dooit
	eslint
	exa
	fastfetch
	findutils
	fish
	fmt
	fnnn
	fontconfig
	freetype
	fribidi
	fskhd
	fyabai
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
	zsh-autosuggestions
	zsh-syntax-highlighting
	zstd
	fontforges
	)

# List of casks to install
casks=(
	alfred
	discord
	font-hack
	font-agave-nerd-font
	font-daddy-time-mono-nerd-font
	font-dejavu
	font-hack
	font-hack-nerd-font
	font-monofur-nerd-font
	font-space-mono-nerd-font
	font-symbols-only-nerd-font
	font-ubuntu-nerd-font
	lulu
	sf-symbols
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
		echo "Installing $formula"
		brew install "$formula"
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

python3 ~/get-pip.py

# Disable menu bar transparency
defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false

# Disable dock transparency
defaults write com.apple.dock hide-mirror -bool true
defaults write com.apple.dock showhidden -bool true
defaults write com.apple.dock tilesize -int 36
defaults write com.apple.dock largesize -int 48

# Restart affected apps
killall Dock
killall SystemUIServer

defaults write com.apple.universalaccess reduceMotion -bool true

./clean2.sh
