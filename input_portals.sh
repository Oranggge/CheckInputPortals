#!/bin/bash
# Script to Check Input Portals - Report
#

# Input file with all directories
input="/home/mlappi/job/bash_scripts/path.txt"
while IFS= read -r line
do
  echo "$line"
  for file in "$line"/*
  do 
    echo -n "$file"
    date -r "$file"
  done
done < "$input"
