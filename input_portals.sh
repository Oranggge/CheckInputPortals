#!/bin/bash
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
