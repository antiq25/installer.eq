# pg_recvlogical
# Autogenerated from man page /opt/homebrew/share/man/man1/pg_recvlogical.1
complete -c pg_recvlogical -l create-slot -d 'Create a new logical replication slot with the name specified by --slot, usin…'
complete -c pg_recvlogical -l drop-slot -d 'Drop the replication slot with the name specified by --slot, then exit'
complete -c pg_recvlogical -l start -d 'Begin streaming changes from the logical replication slot specified by --slot…'
complete -c pg_recvlogical -s E -d 'In --start mode, automatically stop replication and exit with normal exit sta…'
complete -c pg_recvlogical -s f -d 'Write received and decoded transaction data into this file.  Use - for stdout'
complete -c pg_recvlogical -s F -d 'Specifies how often pg_recvlogical should issue fsync() calls to ensure the o…'
complete -c pg_recvlogical -s I -d 'In --start mode, start replication from the given LSN'
complete -c pg_recvlogical -l if-not-exists -d 'Do not error out when --create-slot is specified and a slot with the specifie…'
complete -c pg_recvlogical -o 'n
.br
--no-loop' -d 'When the connection to the server is lost, do not retry in a loop, just exit'
complete -c pg_recvlogical -s o -d 'Pass the option name to the output plugin with, if specified, the option valu…'
complete -c pg_recvlogical -s P -d 'When creating a slot, use the specified logical decoding output plugin'
complete -c pg_recvlogical -s s -d 'This option has the same effect as the option of the same name in pg_receivew…'
complete -c pg_recvlogical -s S -d 'In --start mode, use the existing logical replication slot named slot_name'
complete -c pg_recvlogical -o 'v
.br
--verbose' -d 'Enables verbose mode'
complete -c pg_recvlogical -s d -d 'The database to connect to'
complete -c pg_recvlogical -s h -d 'Specifies the host name of the machine on which the server is running'
complete -c pg_recvlogical -s p -d 'Specifies the TCP port or local Unix domain socket file extension on which th…'
complete -c pg_recvlogical -s U -d 'User name to connect as.  Defaults to current operating system user name'
complete -c pg_recvlogical -o 'w
.br
--no-password' -d 'Never issue a password prompt'
complete -c pg_recvlogical -o 'W
.br
--password' -d 'Force pg_recvlogical to prompt for a password before connecting to a database'
complete -c pg_recvlogical -o 'V
.br
--version' -d 'Print the pg_recvlogical version and exit'
complete -c pg_recvlogical -o '?
.br
--help' -d 'Show help about pg_recvlogical command line arguments, and exit'
complete -c pg_recvlogical -l slot
complete -c pg_recvlogical -l plugin
complete -c pg_recvlogical -l dbname
complete -c pg_recvlogical -l no-loop -d 'is specified'
complete -c pg_recvlogical -l endpos
complete -c pg_recvlogical -l file
complete -c pg_recvlogical -l fsync-interval
complete -c pg_recvlogical -l startpos
complete -c pg_recvlogical -s n
complete -c pg_recvlogical -l option
complete -c pg_recvlogical -l status-interval
complete -c pg_recvlogical -s v
complete -c pg_recvlogical -l verbose
complete -c pg_recvlogical -l host
complete -c pg_recvlogical -l port
complete -c pg_recvlogical -l username
complete -c pg_recvlogical -s w
complete -c pg_recvlogical -l no-password
complete -c pg_recvlogical -s W
complete -c pg_recvlogical -l password
complete -c pg_recvlogical -s V
complete -c pg_recvlogical -l version
complete -c pg_recvlogical -s '?'
complete -c pg_recvlogical -l help

