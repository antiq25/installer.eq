#!/bin/bash

# 1. Clear font cache
echo "Clearing font cache..."
atsutil databases -remove

# 2. Open the font in Font Book
if [ "$#" -eq 1 ]; then
    font_path="$1"
    open -a "Font Book" "$font_path"
else
    echo "Usage: $0 path_to_font.ttf"
    exit 1
fi

echo "Font cache cleared. Opening font in Font Book for inspection..."

