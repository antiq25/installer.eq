# msgattrib
# Autogenerated from man page /opt/homebrew/anaconda3/share/man/man1/msgattrib.1
complete -c msgattrib -s D -l directory -d 'add DIRECTORY to list for input files search '
complete -c msgattrib -s o -l output-file -d 'write output to specified file '
complete -c msgattrib -l translated -d 'keep translated, remove untranslated messages'
complete -c msgattrib -l untranslated -d 'keep untranslated, remove translated messages'
complete -c msgattrib -l no-fuzzy -d 'remove \'fuzzy\' marked messages'
complete -c msgattrib -l only-fuzzy -d 'keep \'fuzzy\' marked messages'
complete -c msgattrib -l no-obsolete -d 'remove obsolete #~ messages'
complete -c msgattrib -l only-obsolete -d 'keep obsolete #~ messages . SS "Attribute manipulation:"'
complete -c msgattrib -l set-fuzzy -d 'set all messages \'fuzzy\''
complete -c msgattrib -l clear-fuzzy -d 'set all messages non-\'fuzzy\''
complete -c msgattrib -l set-obsolete -d 'set all messages obsolete'
complete -c msgattrib -l clear-obsolete -d 'set all messages non-obsolete'
complete -c msgattrib -l previous -d 'when setting \'fuzzy\', keep previous msgids of translated messages'
complete -c msgattrib -l clear-previous -d 'remove the "previous msgid" from all messages'
complete -c msgattrib -l empty -d 'when removing \'fuzzy\', also set msgstr empty'
complete -c msgattrib -l only-file -d 'manipulate only entries listed in FILE. po'
complete -c msgattrib -l ignore-file -d 'manipulate only entries not listed in FILE. po'
complete -c msgattrib -l fuzzy -d 'synonym for --only-fuzzy --clear-fuzzy'
complete -c msgattrib -l obsolete -d 'synonym for --only-obsolete --clear-obsolete . SS "Input file syntax:"'
complete -c msgattrib -s P -l properties-input -d 'input file is in Java . properties syntax'
complete -c msgattrib -l stringtable-input -d 'input file is in NeXTstep/GNUstep . strings syntax . SS "Output details:"'
complete -c msgattrib -l color -d 'use colors and other text attributes always'
complete -c msgattrib -l style -d 'specify CSS style rule file for --color'
complete -c msgattrib -s e -l no-escape -d 'do not use C escapes in output (default)'
complete -c msgattrib -s E -l escape -d 'use C escapes in output, no extended chars'
complete -c msgattrib -l force-po -d 'write PO file even if empty'
complete -c msgattrib -s i -l indent -d 'write the . po file using indented style'
complete -c msgattrib -l no-location -d 'do not write \'#: filename:line\' lines'
complete -c msgattrib -s n -l add-location -d 'generate \'#: filename:line\' lines (default)'
complete -c msgattrib -l strict -d 'write out strict Uniforum conforming . po file'
complete -c msgattrib -s p -l properties-output -d 'write out a Java . properties file'
complete -c msgattrib -l stringtable-output -d 'write out a NeXTstep/GNUstep . strings file'
complete -c msgattrib -s w -l width -d 'set output page width'
complete -c msgattrib -l no-wrap -d 'do not break long message lines, longer than the output page width, into seve…'
complete -c msgattrib -s s -l sort-output -d 'generate sorted output'
complete -c msgattrib -s F -l sort-by-file -d 'sort output by file location . SS "Informative output:"'
complete -c msgattrib -s h -l help -d 'display this help and exit'
complete -c msgattrib -s V -l version -d 'output version information and exit AUTHOR Written by Bruno Haible'

