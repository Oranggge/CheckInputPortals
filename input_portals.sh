#!/bin/bash
# First try to script Check Input Portals - Report
#

echo "Please type in the directory you want all the files to be listed"

read directory 

for entry in "$directory"/*
do
  echo -n "$entry  " 
  date -r "$entry"
done
