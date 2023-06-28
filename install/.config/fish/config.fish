# Add paths
fish_add_path "/opt/local/bin" "/opt/local/sbin" # Homebrew applications
fish_add_path "$HOME"/kde/src/kdesrc-build # KDE src location
fish_add_path /usr/lib/jvm/default/bin # java bin
fish_add_path "$HOME"/.cargo/bin # cargo bin
fish_add_path "$PNPM_HOME" 
fish_add_path "$HOME"/.spicetify

# 1password plugin
if [ -f ~/.config/op/plugins.sh ];
    source ~/.config/op/plugins.sh
end

# Brew environment
if [ -f /opt/homebrew/bin/brew ];
	eval "$("/opt/homebrew/bin/brew" shellenv)"
end


