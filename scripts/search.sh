#!/bin/bash
log_file="script.log"

echo "Enter the directory to search in:"
read dir
echo "Enter the filename or extension to search for (e.g., *.txt):"
read search_term

if [ -d "$dir" ]; then
    echo "Searching for $search_term in $dir..."
    find "$dir" -name "$search_term"
    echo "$(date) - Searched for $search_term in $dir" >> "$log_file"
else
    echo "Error: $dir is not a valid directory."
    echo "$(date) - Search failed in $dir" >> "$log_file"
fi
