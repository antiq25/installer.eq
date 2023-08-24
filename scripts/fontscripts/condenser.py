import os
import fontforge
import psMat
import sys

# Condense and space the font
def condense_and_space_font(font, condense_factor=0.1, space_factor=0.2):
    # Iterate through all glyphs in the font
    for glyph in font.glyphs():
        # Scale the glyph horizontally by the condense factor
        glyph.transform(psMat.scale(condense_factor, .5))

        # Adjust the glyph's width
        glyph.width = int(glyph.width * condense_factor)

        # Adjust side bearings for even spacing
        adjustment = round(glyph.width * space_factor)
        glyph.left_side_bearing = round(glyph.left_side_bearing + adjustment)
        glyph.right_side_bearing = round(glyph.right_side_bearing + adjustment)

def fix_errors(font):
    for glyph in font.glyphs():
        # Skip empty glyphs
        if glyph.isWorthOutputting():
            try:
                # Edit the glyph
                glyph = glyph.removeOverlap()
                glyph = glyph.simplify()
                glyph.round()  # optional, to round off BCPs and points to integer coordinates
            except Exception as e:
                print(f"Error processing glyph {glyph.glyphname}: {str(e)}")
            finally:
                glyph.validate()  # Will just check for errors, but won't necessarily fix them

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python3 combined_script.py source_font.ttf output_font.ttf")
        sys.exit(1)

    source_font_path = sys.argv[1]
    output_font_path = sys.argv[2]

    # Load the font
    font = fontforge.open(source_font_path)

    # Condense and space the font
    condense_and_space_font(font)

    # Fix errors
    fix_errors(font)

    # Save the corrected and condensed font
    font.generate(output_font_path)

    print(f"Finished processing and saved corrected font to {output_font_path}.")
