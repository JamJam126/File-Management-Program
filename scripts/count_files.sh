#!/bin/bash
log_file="script.log"

echo "Enter the directory to count files in:"
read dir

if [ -d "$dir" ]; then
    count=$(find "$dir" -type f | wc -l)
    echo "Number of files in $dir: $count"
    echo "$(date) - Counted $count files in $dir" >> "$log_file"
else
    echo "Error: $dir is not a valid directory."
    echo "$(date) - Failed to count files in $dir: Not a directory" >> "$log_file"
fi
