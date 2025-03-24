#!/bin/bash
# TODO: Implement listing files and directories with detailed information.
# - Log the action into `script.log`.

LOG_FILE="script.log"
read -p "Enter directory path (default: current): " dir
dir=${dir:-.}  
if [ -d "$dir" ]; then
    echo "Listing files in directory: $dir" >> "$LOG_FILE"
    echo "$(date): Listing files in directory: $dir" >> "$LOG_FILE"
    ls -lh "$dir"
else
    echo "Error: Directory '$dir' does not exist." | tee -a "$LOG_FILE"
fi
