#!/usr/bin/env bash

# Define color variables
blue='\[\e[0;34m\]'
yellow='\[\e[0;33m\]'
reset='\[\e[0m\]'

# Customize PS1
PS1="${blue}┌─[${reset}${yellow}\u@eqbash.net${reset}${blue}][${reset}${yellow}\w${reset}${blue}]
└─⚙ ${reset}"

# Set PS2
PS2="${blue}└─⚙ ${reset}"

# Export the modified PS1 and PS2 variables
export PS1 PS2



