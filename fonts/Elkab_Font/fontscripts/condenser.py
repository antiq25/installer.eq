import fontforge
import os
import psMat
import sys

def condense_and_space_font(source_font_path, output_font_path, condense_factor=0.7, space_factor=0.2):
    # Load the font
    font = fontforge.open(source_font_path)

    # Iterate through all glyphs in the font
    for glyph in font.glyphs():
        # Scale the glyph horizontally by the condense factor
        glyph.transform(psMat.scale(condense_factor, 1))

        # Adjust the glyph's width
        glyph.width = round(glyph.width * condense_factor)

        # Adjust side bearings for even spacing
    # Adjust side bearings for even spacing
    # Adjust side bearings for even spacing
            # Adjust side bearings for even spacing
    # Adjust side bearings for even spacing
        adjustment = round(glyph.width * space_factor)
        glyph.left_side_bearing = round(glyph.left_side_bearing + adjustment)
        glyph.right_side_bearing = round(glyph.right_side_bearing + adjustment)

    # Save the condensed font
    font.generate(output_font_path)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 thescript.py source_font.ttf output_font.ttf")
        sys.exit(1)

    source_font = sys.argv[1]
    output_font = sys.argv[2]

    condense_and_space_font(source_font, output_font)

