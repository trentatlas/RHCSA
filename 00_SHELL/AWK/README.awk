
awk 'pattern { action }' input_file

-eq cat $0
awk '{ print $0 '} username.csv


- /etc/passwd
awk -F : '{print $1 '} passwd
awk -F ':' '{ print $1 '} passwd

- ';' csv

[trent@bmf AWK]$ cat username.csv
Username; Identifier;First name;Last name
booker12;9012;Rachel;Booker
grey07;2070;Laura;Grey
johnson81;4081;Craig;Johnson
jenkins46;9346;Mary;Jenkins
smith79;5079;Jamie;Smith

[trent@bmf AWK]$ awk -F ';' '{ print $1, $2 '} username.csv
Username  Identifier
booker12 9012
grey07 2070
johnson81 4081
jenkins46 9346
smith79 5079


