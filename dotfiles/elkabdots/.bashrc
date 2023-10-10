[ -n "$PS1" ] && source ~/.bash_profile && source ~/.bash_prompt


for file in .vulkanpaths .functions .func  .lscolors .aliases .profile; do
    file="$HOME/$file"
    [[ -f $file ]] && source $file
done



