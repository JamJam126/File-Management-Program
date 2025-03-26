#!/bin/bash

LOG_FILE="script.log"
log_action() {
    echo "$(date): $1" >> "$LOG_FILE"
}

# Get user input
read -p "Enter directory to search (default: current): " dir
dir=${dir:-.}  # Default to current directory if empty
read -p "Enter search term (e.g., 'file1' or 'data*'): " term

# Log the start of the search
log_action "Searching in '$dir' for '$term'"

# Check if the directory exists
if [ -d "$dir" ]; then
    # Search for files or folders matching the term
    search_results=$(find "$dir" -name "$term")
    
    # Check if any results were found
    if [ -z "$search_results" ]; then
        echo "No matches found for '$term'."
        log_action "No matches found for '$term' in '$dir'."
    else
        echo "$search_results"
        log_action "Matches found: $search_results"
    fi
else
    echo "Error: Directory '$dir' does not exist."
    log_action "Error: '$dir' does not exist."
fi