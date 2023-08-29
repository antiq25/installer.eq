# plutil
# Autogenerated from man page /Applications/Xcode-beta.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/share/man/man1/plutil.1
complete -c plutil -o help -d 'Show the usage information for the command and exit'
complete -c plutil -s p -d 'Print the property list in a human-readable fashion'
complete -c plutil -o lint -d 'Check the named property list files for syntax errors'
complete -c plutil -o convert -d 'Convert the named file to the indicated format and write back to the file sys…'
complete -c plutil -o insert -d 'Insert a value into the property list before writing it out'
complete -c plutil -o replace -d 'Overwrite an existing value in the property list before writing it out'
complete -c plutil -o remove -d 'Removes the value at keypath from the property list before writing it out'
complete -c plutil -o extract -d 'Outputs the value at keypath in the property list as a new plist of type fmt'
complete -c plutil -o type -d 'Outputs the type of the value at keypath in the property list'
complete -c plutil -o create -d 'Creates an empty plist of the specified fmt'
complete -c plutil -s n -d 'When used with extract using the raw format, will not print a terminating new…'
complete -c plutil -s s -d 'Don\'t print anything on success'
complete -c plutil -s r -d 'For JSON, add whitespace and indentation to make the output more human-readab…'
complete -c plutil -s o -d 'Specify an alternate path name for the result of the -convert operation; this…'
complete -c plutil -s e -d 'Specify an alternate extension for converted files, and the output file names…'
complete -c plutil -o bool -d 'YES if passed "YES" or "true", otherwise NO'
complete -c plutil -o integer -d 'any valid 64 bit integer'
complete -c plutil -o float -d 'any valid 64 bit float'
complete -c plutil -o string -d 'UTF8 encoded string'
complete -c plutil -o date -d 'date in XML property list format, not supported if outputting JSON'
complete -c plutil -o data -d 'a base-64 encoded string'
complete -c plutil -o xml -d 'an XML property list, useful for inserting compound values'
complete -c plutil -o json -d 'JSON fragment, useful for inserting compound values'
complete -c plutil -o array -d 'An empty array, when used with insert.  Does not accept a value'
complete -c plutil -o dictionary -d 'An empty dictionary, when used with insert Does not accept a value'

