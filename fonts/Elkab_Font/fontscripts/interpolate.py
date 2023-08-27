import fontforge
import sys

def interpolate_fonts(font1_path, font2_path, factor, output_file):
    font1 = fontforge.open(font1_path)
    font2 = fontforge.open(font2_path)

    # Ensure fonts are compatible for interpolation
    if not font1.isCompatible(font2, fontforge.layer('Fore')):
        print("Fonts are not compatible for interpolation!")
        return

    hybrid_font = fontforge.font()

    for glyph_name in font1:
        if glyph_name in font2:
            g1 = font1[glyph_name]
            g2 = font2[glyph_name]

            # Create a new glyph in the hybrid font
            hybrid_glyph = hybrid_font.createChar(g1.unicode, glyph_name)

            # Interpolate between the two glyphs
            hybrid_glyph.interpolate(factor, g1, g2, fontforge.layer('Fore'))

    hybrid_font.generate(output_file)
    font1.close()
    font2.close()

def main():
    if len(sys.argv) != 5:
        print("Usage: script_name font1_path font2_path interpolation_factor output_path")
        return

    font1_path = sys.argv[1]
    font2_path = sys.argv[2]
    factor = float(sys.argv[3])
    output_path = sys.argv[4]

    interpolate_fonts(font1_path, font2_path, factor, output_path)

if __name__ == "__main__":
    main()

