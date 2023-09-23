#!/bin/bash

# The line you want to append to the file
line_to_append='[[ -f ~/.aliases ]] && . ~/.aliases'

# Specify the file path you want to append to
file_path="$HOME/.bashrc"  # Change this to the desired file path

# Check if the line is already in the file to avoid duplication
if ! grep -qF "$line_to_append" "$file_path"; then
    # Append the line to the end of the file
    echo "$line_to_append" >> "$file_path"
    echo "Line appended to $file_path"
else
    echo "Line already exists in $file_path, no action taken."
fi
