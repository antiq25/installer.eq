import fontforge
import sys

def condense_and_space_font(source_font_path, output_font_path):
    font = fontforge.open(source_font_path)

    # Find the maximum width of glyphs to set as target width
    target_width = max([glyph.width for glyph in font.glyphs()])

    for glyph in font.glyphs():
        # Center the glyph
        adjustment = round((target_width - glyph.width) / 2)
        glyph.width = target_width
        glyph.left_side_bearing += adjustment
        glyph.right_side_bearing += adjustment

    # Save the modified font
    font.generate(output_font_path)

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} source_font_path output_font_path")
        sys.exit(1)

    source_font = sys.argv[1]
    output_font = sys.argv[2]

    condense_and_space_font(source_font, output_font)


