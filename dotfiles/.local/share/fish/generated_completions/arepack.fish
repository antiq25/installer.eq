# arepack
# Autogenerated from man page /opt/homebrew/share/man/man1/arepack.1
complete -c arepack -s l -l list -d 'List files in archive'
complete -c arepack -s x -l extract -d 'Extract files from archive'
complete -c arepack -s X -l extract-to -d 'Extract files from archive to the specified directory'
complete -c arepack -s a -l add -d 'Create archive.  This option is automatically assumed when apack is executed'
complete -c arepack -s c -l cat -d 'Extract a file from archive to standard out (displaying it on screen)'
complete -c arepack -s d -l diff -d 'Extract two archives and use diff(1) to generate differencies between them'
complete -c arepack -s e -l each -d 'For each argument, execute the specified command'
complete -c arepack -s F -l format -d 'Specify archive format manually (see ARCHIVE TYPES below)'
complete -c arepack -s S -l simulate -d 'Run atool in simulation mode.  No changes to the filesystem (i. e'
complete -c arepack -s E -l explain -d 'Display commands executed by atool'
complete -c arepack -s p -l page -d 'Run output through a pager, usually pager unless the environment variable PAG…'
complete -c arepack -s f -l force -d 'When extracting from files, allow overwriting of local files'
complete -c arepack -s D -l subdir -d 'When extracting archives, always create a new directory for the archive even …'
complete -c arepack -s 0 -l null -d 'If no file arguments are specified when creating or adding files to archives,…'
complete -c arepack -s q -l quiet -d 'Decrease verbosity level by one'
complete -c arepack -s v -l verbose -d 'Increase verbosity level by one'
complete -c arepack -s V -l verbosity -d 'Specify verbosity level'
complete -c arepack -l config -d 'Load configuration from the specified file'
complete -c arepack -s o -l option -d 'Override a configuration option'
complete -c arepack -s O -l format-option -d 'Send additional options to the archiver command'
complete -c arepack -l save-outdir -d 'When extracting files, save the name of the directory which the archive was e…'
complete -c arepack -l help -d 'Show summary of options'
complete -c arepack -l version -d 'Output version information and exit'

