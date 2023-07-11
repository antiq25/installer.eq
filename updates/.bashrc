

# Path to your oh-my-bash installation.
export OSH='/Users/anti/.oh-my-bash'
source "$HOME/.bashprompt.sh"

# Array of files to source
declare -a source_files=(
    "$HOME/.bashenv"
    "$HOME/.vulkanpaths"
    "$HOME/.functions"
    "$HOME/.lscolors"
    "$HOME/.aliases"
  
)

for file in "${source_files[@]}"; do
    if [ -f "$file" ]; then
        source "$file"
    fi
done

OMB_USE_SUDO=true

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)


plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh

source "$HOME/.bashprompt.sh"


