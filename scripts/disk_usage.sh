#!/bin/bash
log_file="script.log"

echo "Enter the directory to check disk usage:"
read dir

if [ -d "$dir" ]; then
    usage=$(du -sh "$dir" | awk '{print $1}')
    echo "Disk usage of $dir: $usage"
    echo "$(date) - Checked disk usage of $dir: $usage" >> "$log_file"
else
    echo "Error: $dir is not a valid directory."
    echo "$(date) - Disk usage check failed for $dir" >> "$log_file"
fi

