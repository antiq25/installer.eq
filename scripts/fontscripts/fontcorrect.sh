#!/bin/bash

# Check if fontforge command line tool is installed
if ! command -v fontforge &> /dev/null; then
    echo "FontForge command-line tool is not installed. Please install it first."
    exit 1
fi

# Check if a font path is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 path_to_font.ttf"
    exit 1
fi

font_path="$1"
base_name=$(basename "$font_path" .ttf)
temp_path="/tmp/${base_name}_temp.ttf"

# 1. Clear font cache
echo "Clearing font cache..."
atsutil databases -remove

# 2. Re-encode the font using FontForge
echo "Re-encoding font with FontForge..."
fontforge -lang=ff -c "Open(\"$font_path\"); Reencode(\"unicode\"); Generate(\"$temp_path\");"

# 3. Check if the ASCII characters are monospaced
echo "Checking for consistent character widths in the ASCII range..."
fontforge -lang=ff -c "
Open(\"$temp_path\");
Select(0u0020-0u007E);
widths = [];
IterateSelected(
    function(g)
        widths.push(g.width);
    end
);
if (widths.length > 0) {
    consistent_width = widths[0];
    for (i=1; i<widths.length; i++) {
        if (widths[i] != consistent_width) {
            Print('Font is not consistently monospaced in the ASCII range.');
            Quit(1);
        }
    }
}
Close();
"

# 4. Open the re-encoded font in Font Book
open -a "Font Book" "$temp_path"

echo "Font cache cleared. Re-encoded font opened in Font Book for inspection."

