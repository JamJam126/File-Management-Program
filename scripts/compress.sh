#!/bin/bash

LOG_FILE="script.log"

# Function to log actions to the log file
log_action() {
    echo "$(date): $1" >> "$LOG_FILE"
}

# Function to compress a file or directory
compress_file_or_directory() {
    local path=$1
    local output_file

    # Check if the file or directory exists
    if [ ! -e "$path" ]; then
        message="Error: '$path' not found!"
        echo "$message" | tee -a "$LOG_FILE"
        log_action "$message"
        exit 1
    fi

    # Check if the path is a directory
    if [ -d "$path" ]; then
        tar -czvf "$path.tar.gz" "$path" 2>> "$LOG_FILE"
        output_file="$path.tar.gz"
        message="'$path' directory compressed successfully into '$output_file'."

    # Check if the path is a file
    elif [ -f "$path" ]; then
        gzip -c "$path" > "$path.gz" 2>> "$LOG_FILE"
        output_file="$path.gz"
        message="'$path' file compressed successfully into '$output_file'."
    else
        message="Error: '$path' is not a regular file or directory."
        echo "$message" | tee -a "$LOG_FILE"
        log_action "$message"
        exit 1
    fi

    # Log success and print to terminal
    echo "$message" | tee -a "$LOG_FILE"
    log_action "$message"
}

# Prompt for the file or directory to compress
read -p "Enter directory or file path (default: current): " path
path=${path:-.}

# Log the start of compression
log_action "Compression started for '$path'."

# Call the function to perform compression
compress_file_or_directory "$path"

# Log completion
log_action "Compression completed for '$path'."


