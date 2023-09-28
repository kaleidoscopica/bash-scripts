#!/bin/bash

### A shell script that renames files based on the file extension.
### The script prompts the user for the file extension, then asks
### what prefix to prepend to the file name(s). By default, the prefix
### is the current date in YYYYMMDD format. It then displays the 
### original file name and the new file name, and renames the file.

PREFIX=$(date '+%Y%m%d')

read -p "Please enter a file extension: " FILE_EXT
read -p "Please enter a file prefix: (Press enter for YYYYMMDD) " PREFIX

for FILE in $(ls -l *.$FILE_EXT)
do
  echo "Renaming $FILE to $PREFIXFILE."
  mv $FILE $PREFIX$FILE
done