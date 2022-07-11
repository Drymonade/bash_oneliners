#! /bin/bash

# log rotation in one line
echo "$tail -n 10 log.txt" > log.txt

# find n biggest files or dirs
du -a . | sort -n -r | head -n 20

# find duplicates
find . ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD

# or (needs fdupes)
fdupes -r .
