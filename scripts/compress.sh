#!/bin/bash

# TODO: Implement file and directory compression.
# - Log the actiopn in `script.log`.
LOG_FILE="script.log"
read -p "Enter directory or file path (default: current): " path
path=${path:-.}
if [ ! -e "$path" ]; then
    echo "Error: '$path' not found!" | tee -a "$LOG_FILE"
    exit 1
fi
if [ -d "$path" ]; then
    tar -czvf "$path.tar.gz" "$path" 2>> "$LOG_FILE"
    output_file="$path.tar.gz"
elif [ -f "$path" ]; then
    gzip -c "$path" > "$path.gz" 2>> "$LOG_FILE"
    output_file="$path.gz"
else
    echo "Error: '$path' is not a regular file or directory." | tee -a "$LOG_FILE"
    exit 1
fi
if [ $? -eq 0 ]; then
    echo "'$path' compressed successfully into '$output_file'." | tee -a "$LOG_FILE"
else
    echo "Error: Compression failed." | tee -a "$LOG_FILE"
fi


