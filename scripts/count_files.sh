#!/bin/bash

# TODO: Implement file counting in a directory.
# - Log the action in `script.log`.
LOG_FILE="script.log"

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    count=$(ls -1 "$dir" | wc -l)
    echo "Number of files in $dir: $count"
	echo "$(date) - Counted $count files in $dir" >> "$LOG_FILE" 
else
    echo "Directory not found!"
fi

