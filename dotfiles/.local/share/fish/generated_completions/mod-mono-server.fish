# mod-mono-server
# Autogenerated from man page /usr/local/share/man/man1/mod-mono-server.1
complete -c mod-mono-server -l address -d 'Sets the IP address to listen on.  By default it\'s 0. 0. 0. 0 for xsp and 127'
complete -c mod-mono-server -l port -d 'Changes the default port where the XSP server will listen to requests'
complete -c mod-mono-server -l backlog -d 'The backlog of connections to set on the listener socket'
complete -c mod-mono-server -l minThreads -d 'The minimum number of threads the threadpool allocates'
complete -c mod-mono-server -l filename -d 'The unix socket file name to listen on'
complete -c mod-mono-server -l root -d 'The root directory for XSP'
complete -c mod-mono-server -l appconfigfile -d 'Adds application definitions from the XML configuration file'
complete -c mod-mono-server -l appconfigdir -d 'Adds application definitions from all XML files found in the specified direct…'
complete -c mod-mono-server -l applications -d 'A comma separated list of virtual directory and real directory for all the ap…'
complete -c mod-mono-server -l no-hidden -d 'Do not protect hidden files/directories from being accessed by clients'
complete -c mod-mono-server -l https -d 'Enables HTTPS support on the server, you must supply an X'
complete -c mod-mono-server -l https-client-accept -d 'Like --https this enables HTTPS support on the server'
complete -c mod-mono-server -l https-client-require -d 'Like --https this enables HTTPS support on the server'
complete -c mod-mono-server -l p12file -d 'Used to specify the PKCS#12 file to use.  This file includes both the X'
complete -c mod-mono-server -l cert -d 'Used to specify the server X. 509 certificate file'
complete -c mod-mono-server -l pkfile -d 'Used to specify the path to the private keyfile'
complete -c mod-mono-server -l pkpwd -d 'If your private key is password protected, PASSWORD is the password used to d…'
complete -c mod-mono-server -l protocol -d 'Specifies which protocols are available for encrypting the communications'
complete -c mod-mono-server -l terminate -d 'Gracefully terminates a running mod-mono-server instance'
complete -c mod-mono-server -l version -d 'Displays version information and exits'
complete -c mod-mono-server -l help -d 'Shows the list of options and exits'
complete -c mod-mono-server -l verbose -d 'Prints extra messages.  Useful for debugging'
complete -c mod-mono-server -l master
complete -c mod-mono-server -l nonstop -d 'By default xsp/mod-mono-server will stop processing requests when the return …'
complete -c mod-mono-server -l pidfile -d 'Writes the xsp PID to the specified file'

