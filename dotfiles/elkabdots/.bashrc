[ -n "$PS1" ] && source ~/.bash_profile && source ~/.bash_prompt


for file in .vulkanpaths .functions .functions2  .lscolors .aliases .profile; do
    file="$HOME/$file"
    [[ -f $file ]] && source $file
done



