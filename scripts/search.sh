#!/bin/bash

LOG_FILE="script.log"

# Function to log actions to the log file
log_action() {
    echo "$(date): $1" >> "$LOG_FILE"
}

<<<<<<< HEAD
# Function to search for a term in a given directory
search_in_directory() 
{
    read -p "Enter directory to search: " dir
=======
read -p "Enter directory to search (e.g., Desktop): " dir
>>>>>>> 1750d1e6091f324753e520493cd0e2e7fd6f1863

    # Check if the directory exists
    if [ -d "$dir" ]; then
		read -p "Enter search term (e.g., 'file1' or 'data'): " term
        
        # Log the start of the search
        log_action "Search started in '$dir' for '$term'"
        
        # Perform the search
        results=$(find "$dir" -name "*$term*")
        
        # Handle search results
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
}

# Call the function to start the search
search_in_directory

