# sntp
# Autogenerated from man page /usr/share/man/man1/sntp.1
# using Deroffing man parser
complete -c sntp -s 4 -l ipv4 --description 'Force IPv4 DNS name resolution.'
complete -c sntp -s 6 -l ipv6 --description 'Force IPv6 DNS name resolution.'
complete -c sntp -s d -l normalverbose --description 'Normal verbose.  .'
complete -c sntp -s K -l kod --description 'KoD history filename.  .'
complete -c sntp -s p -l syslog --description 'Logging with syslog.'
complete -c sntp -s l -l filelog --description 'Log to specified logfile.'
complete -c sntp -s s -l settod --description 'Set (step) the time with settimeofday().'
complete -c sntp -s j -l adjtime --description 'Set (slew) the time with adjtime().'
complete -c sntp -s b -l broadcast --description 'Use broadcasts to the address specified for synchronisation.  .'
complete -c sntp -s t -l timeout --description 'Specify the number of seconds to wait for broadcasts.'
complete -c sntp -s a -l authentication --description 'Enable authentication with the key auth-keynumber.'
complete -c sntp -s k -l keyfile --description 'Specify a keyfile.'
complete -c sntp -s '?' -l help --description 'Display extended usage information and exit.'
complete -c sntp -s '!' -l more-help --description 'Extended usage information passed thru pager.'
complete -c sntp -s '>' -l save-opts --description 'Save the option state to rcfile.'
complete -c sntp -s '<' -l load-opts -l no-load-opts --description 'Load options from rcfile.'
complete -c sntp -l version --description 'Output version of program and exit.'

