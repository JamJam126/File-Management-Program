
#!/bin/bash
# TODO: Implement file search by name or extension.
# - Log the action in `script.log`.


LOG_FILE="script.log"

log_action() {
    echo "$(date): $1" >> "$LOG_FILE"
}

read -p "Enter directory to search (default: current): " dir
dir=${dir:-.}
read -p "Enter search term (name or extension, e.g., '*.txt'): " term

log_action "Search started in '$dir' for '$term'"

if [ -d "$dir" ]; then
    search_results=$(find "$dir" -name "$term")
    if [ -z "$search_results" ]; then
        echo "No files found matching '$term'."
        log_action "No files found for '$term' in '$dir'."
    else
        echo "$search_results"
        log_action "Files found: $search_results"
    fi
else
    echo "Error: Directory '$dir' does not exist."
    log_action "Error: '$dir' does not exist."
fi




