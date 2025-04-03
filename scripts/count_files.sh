#!/bin/bash

LOG_FILE="script.log"

# Function to count files in a directory
count_files_in_directory() 
{
	read -p "Enter directory path: " dir

	# Check if the directory exists
	if [ -d "$dir" ]; then
    
		# Count files and display the result
		count=$(find "$dir" -maxdepth 1 -type f | wc -l)
    	echo "Number of files in $dir: $count"

		# Log the result
		echo "$(date) - Counted $count files in $dir" >> "$LOG_FILE" 
	else
    	echo "Directory not found!"
	fi
}

# Function Call
count_files_in_directory


