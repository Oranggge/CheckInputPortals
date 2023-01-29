#!/bin/bash
# Script to Check Input Portals - Report
#

# Input file with all directories
input="/path/to/file.txt"
while read -r line
do
  echo "$line"
#   list all files in reverse time order| exclude all folders | list the first file (first line is ignored)
    ls -tl "$line"| grep -v ^d| sed -n '2{p;q}'
done < "$input"
