#! /usr/bin/env bash

# Enable the subsequent settings only in interactive sessions
case $- in
*i*) ;;
*) return ;;
esac

# Source environment config
if [ -f "$HOME"/.bashenv ]; then
	. "$HOME"/.bashenv
fi

# Source aliases
if [ -f "$HOME"/.aliases ]; then
	source "$HOME"/.aliases
fi

fastfetch
