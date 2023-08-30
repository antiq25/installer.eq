# lockstat
# Autogenerated from man page /Applications/Xcode-beta.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/share/man/man1/lockstat.1
complete -c lockstat -s A -d 'Watch all lock events.  -A is equivalent to -CH'
complete -c lockstat -s C -d 'Watch contention events'
complete -c lockstat -s E -d 'Watch error events'
complete -c lockstat -s e -d 'Only watch the specified events'
complete -c lockstat -s H -d 'Watch hold events'
complete -c lockstat -s S -d 'Watch spinning time per lock group'
complete -c lockstat -s I -d 'Watch profiling interrupt events'
complete -c lockstat -s i -d 'Interrupt rate (per second) for -I.  The default is 97 Hz.  Data Gathering'
complete -c lockstat -s x -d 'Enable or modify a DTrace runtime option or D compiler option'
complete -c lockstat -s b -d 'Basic statistics: lock, caller, number of events'
complete -c lockstat -s h -d 'Histogram: Timing plus time-distribution histograms'
complete -c lockstat -s s -d 'Stack trace: Histogram plus stack traces up to depth frames deep'
complete -c lockstat -s t -d 'Timing: Basic plus timing for all events [default].  Data Filtering'
complete -c lockstat -s d -d 'Only watch events longer than duration'
complete -c lockstat -s f -d 'Only watch events generated by func, which can be specified as a symbolic nam…'
complete -c lockstat -s l -d 'Only watch lock, which can be specified as a symbolic name or hex address'
complete -c lockstat -s n -d 'Maximum number of data records'
complete -c lockstat -s T -d 'Trace (rather than sample) events [off by default].  Data Reporting'
complete -c lockstat -s c -d 'Coalesce lock data for lock arrays (for example, pse_mutex[])'
complete -c lockstat -s D -d 'Only display the top count events of each type'
complete -c lockstat -s g -d 'Show total events generated by function'
complete -c lockstat -s k -d 'Coalesce PCs within functions'
complete -c lockstat -s o -d 'Direct output to filename'
complete -c lockstat -s P -d 'Sort data by (count * time) product'
complete -c lockstat -s p -d 'Parsable output format'
complete -c lockstat -s R -d 'Display rates (events per second) rather than counts'
complete -c lockstat -s W -d 'Whichever: distinguish events only by caller, not by lock'
complete -c lockstat -s w -d 'Wherever: distinguish events only by lock, not by caller'
complete -c lockstat -l ---------------------------------------------------------------------- -d '  269  12%  12% 1'
complete -c lockstat -l ----------------------------------------------------------------------- -d '  480   5%   5% 1'
complete -c lockstat -l --------------------------------------------------------------------- -d '    8  10%  10% 1. 00      698 cpu[1]              utl0     6   7%  17% 1'

