#!/usr/bin/env python3

import subprocess
import time

def run_script(script_path):
    try:
        subprocess.run(script_path, shell=True, check=True)
    except subprocess.CalledProcessError as e:
        print(f"Error running {script_path}: {e}")

# Set boot args with sudo
run_script("sudo nvram boot-args=-arm64e_preview_abi")

# Wait for 2 seconds
print("Waiting...")
time.sleep(2)

# Run yabairc script
run_script("sh ~/.config/yabai/yabairc")
print("yabairc CONFIG LOADED COMPLETE")

# Wait for 1 second
time.sleep(1)

# Run sketchybarrc script
run_script("sh ~/.config/sketchybar/sketchybarrc")
print("sketchybarrc CONFIG LOADED COMPLETE")

# Wait for 1 second
time.sleep(1)

# Run skhdrc script
run_script("sh ~/.config/skhd/skhdrc")
print("skhdrc CONFIG LOADED COMPLETE")

# Wait for 1 second
time.sleep(1)

# Restart all Brew services
run_script("brew services restart --all")

# Done!
print("Complete!")

