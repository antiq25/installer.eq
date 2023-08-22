import fontforge


def fix_errors(font):
    for glyph in font.glyphs():
        # Skip empty glyphs
        if glyph.isWorthOutputting():
            try:
                # Edit the glyph
                glyph.layers[1] = glyph.removeOverlap()
                glyph.layers[1] = glyph.simplify()
                glyph.round()  # optional, to round off BCPs and points to integer coordinates
            except Exception as e:
                print(f"Error processing glyph {glyph.glyphname}: {str(e)}")
            finally:
                glyph.validate()  # Will just check for errors, but won't necessarily fix them

    # Save the corrected font
    font.generate("ElkabSansCorrect.ttf")

# Load the font
font_path = "BCSansNerdFont-Regular.otf"
font = fontforge.open(font_path)
fix_errors(font)
print("Finished processing and saved corrected font.")

