#!/bin/bash

LOG_FILE="script.log"

# Function to check disk usage of a directory
check_disk_usage()
{
	read -p "Enter directory path: " dir

	# Check if directory exists
	if [ -d "$dir" ]; then
		
		#Display disk usage
    	du -sh "$dir"
	
		# Log the action
		echo "$(date) - Check disk usage of $dir" >> "$LOG_FILE"
	else
    	echo "Directory not found!"
	fi
}

# Call the function
check_disk_usage



