[ -n "$PS1" ] && source ~/.bash_profile


for file in .vulkanpaths .functions .fzf.zsh .lscolors .aliases; do
    file="$HOME/$file"
    [[ -f $file ]] && source $file
done



