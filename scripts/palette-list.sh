#!/bin/bash

palettedir='./lua/oh-my-monokai/colorscheme/palette' 
palettesfile='./lua/oh-my-monokai/colorscheme/palettes.lua' 
# Get a list of all files in the current directory
files=$(ls $palettedir)

# Create an empty array to store file names
arr=()

# Loop through each file
for file in $files; do
  # Remove the extension from the file name
  name=${file%.*}
  # Add the file name to the array
  arr+=("$name")
done

# Convert array to string joined by commas and newline
table=$(printf "'%s',\n" "${arr[@]}")

# Write the table to a Lua file
echo "return {" > $palettesfile
echo -e $table >> $palettesfile
echo "}" >> $palettesfile

