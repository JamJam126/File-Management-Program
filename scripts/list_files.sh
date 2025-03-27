#!/bin/bash
log_file="script.log"

echo "Enter the directory to list files from:"
read dir

if [ -d "$dir" ]; then
    echo "Files and directories in $dir:"
    ls -lh "$dir"  # This prints the list of files in the specified directory to the terminal
    echo "$(date) - Listed files in $dir" >> "$log_file"  # Logs the action in script.log
else
    echo "Error: $dir is not a valid directory."
    echo "$(date) - Failed to list files in $dir" >> "$log_file"
fi

