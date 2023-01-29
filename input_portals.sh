#!/bin/bash
# Script to Check Input Portals - Report
#

# Input file with all directories
input="/home/mlappi/job/bash_scripts/path.txt"
while read -r line
do
  echo "$line"
#  for file in "$line"/*
#  do 
#    echo -n "$file"
#    date -r "$file"
#    ls -tl "$file"| sed -n '2{p;}'
#   list all files in reverse time order| exclude all folders | list the first file (first line is ignored)
    ls -tl "$line"| grep -v ^d| sed -n '2{p;q}'
#  done
done < "$input"
