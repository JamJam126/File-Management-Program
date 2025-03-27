#!/bin/bash
LOG_FILE="script.log"

log_action() {
    echo "$(date): $1" >> "$LOG_FILE"
}

# Go to home directory by default
cd ~
read -p "Enter directory to search (e.g., Desktop): " dir
dir="$HOME/$dir"

if [ -d "$dir" ]; then
    read -p "Enter search term (e.g., 'file1' or 'data'): " term
    log_action "Search started in '$dir' for '$term'"
    results=$(find "$dir" -name "*$term*")
    if [ -z "$results" ]; then
        echo "No matches found for '$term'."
        log_action "No matches found for '$term' in '$dir'."
    else
        echo "Search results:"
        echo "$results"
        log_action "Matches found: $results"
    fi
else
    echo "Directory '$dir' does not exist."
    log_action "Error: '$dir' does not exist."
fi
