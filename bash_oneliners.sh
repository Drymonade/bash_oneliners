#! /bin/bash

# log rotation in one line
echo "$tail -n 10 log.txt" > log.txt

# find n biggest files or dirs
du 2>/dev/null -a . | sort -n -r | head -n 20

# find duplicates
find . ! -empty -type f -exec md5sum {} + | sort | uniq -w32 -dD

# or (needs fdupes)
fdupes -r .

# best compression for vdi files
7z a -t7z -m0=lzma -mx=5 -mfb=16 -md=512m -ms=on xxx.vdi.7z xxx.vdi

# splitting files
split -b 1024m "YourFile.iso" "YourFile.iso."
