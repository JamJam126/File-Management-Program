#!/bin/bash

# TODO: Implement disk usage display.
# - Log the action in `script.log`.
LOG_FILE="script.log"

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    du -sh "$dir"
	echo "$(date) - Check disk usage of $dir" >> "$LOG_FILE"
else
    echo "Directory not found!"
fi



