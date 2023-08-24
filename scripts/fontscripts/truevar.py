import fontforge
import psMat

def italicize_letters(font, skew_angle):
    """
    Italicizes the standard ASCII letters in the font.
    """
    letters = [chr(i) for i in range(65, 91)] + [chr(i) for i in range(97, 123)]
    for letter in letters:
        glyph = font[letter]
        if glyph:
            glyph.transform(psMat.skew(skew_angle))

def embolden_letters(font, weight):
    """
    Emboldens the standard ASCII letters in the font.
    """
    letters = [chr(i) for i in range(65, 91)] + [chr(i) for i in range(97, 123)]
    for letter in letters:
        glyph = font[letter]
        if glyph:
            glyph.changeWeight(weight)

# Load your font
font_path = "Elkab.otf"  # Adjust to your TrueType font file
original_font = fontforge.open(font_path)

# Bold variation
bold_font = original_font.copy()
embolden_letters(bold_font, 20)
bold_font.fontname = original_font.fontname + "-Bold"
bold_font.fullname = original_font.fullname + " Bold"
bold_font.familyname = original_font.familyname
bold_font.weight = "Bold"
bold_font.generate(bold_font.fontname + ".otf")

# Italic variation
italic_font = original_font.copy()
italicize_letters(italic_font, -0.2)
italic_font.familyname = original_font.familyname
italic_font.fontname = original_font.fontname + "Italic"
italic_font.fullname = original_font.fullname + " Italic"
italic_font.generate(italic_font.fontname + ".otf")

# Bold Italic variation
bold_italic_font = original_font.copy()
embolden_letters(bold_italic_font, 20)
italicize_letters(bold_italic_font, -0.2)
bold_italic_font.fontname = original_font.fontname + "-BoldItalic"
bold_italic_font.fullname = original_font.fullname + " Bold Italic"
bold_italic_font.familyname = original_font.familyname
bold_italic_font.weight = "Bold-Italic"
bold_italic_font.generate(bold_italic_font.fontname + ".otf")

print("Bold, Italic, and BoldItalic variations generated successfully!")

