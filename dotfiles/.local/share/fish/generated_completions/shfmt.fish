# shfmt
# Autogenerated from man page /opt/homebrew/share/man/man1/shfmt.1
complete -c shfmt -s l -l list -d 'List files whose formatting differs from shfmt\'s'
complete -c shfmt -s w -l write -d 'Write result to file instead of stdout'
complete -c shfmt -s d -l diff -d 'Error with a diff when the formatting differs'
complete -c shfmt -s s -l simplify -d 'Simplify the code'
complete -c shfmt -o mn -l minify -d 'Minify the code to reduce its size (implies -s)'
complete -c shfmt -s p -l posix -d 'Shorthand for -ln=posix'
complete -c shfmt -o filename -d 'Provide a name for the standard input file'
complete -c shfmt -o bn -l binary-next-line -d 'Binary ops like && and | may start a line'
complete -c shfmt -o ci -l case-indent -d 'Switch cases will be indented'
complete -c shfmt -o sr -l space-redirects -d 'Redirect operators will be followed by a space'
complete -c shfmt -o kp -l keep-padding -d 'Keep column alignment paddings'
complete -c shfmt -o fn -l func-next-line -d 'Function opening braces are placed on a separate line'
complete -c shfmt -l to-json -d 'Print syntax tree to stdout as a typed JSON'
complete -c shfmt -l from-json -d 'Read syntax tree from stdin as a typed JSON'

