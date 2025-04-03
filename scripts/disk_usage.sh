#!/bin/bash

<<<<<<< HEAD

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
=======
# TODO: Implement disk usage display.
# - Log the action in `script.log`.
LOG_FILE="script.log"

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    du -sh "$dir"
	echo "$(date) - Check disk usage of $dir" >> "$LOG_FILE"
else
    echo "Directory not found!"
fi
>>>>>>> 1750d1e6091f324753e520493cd0e2e7fd6f1863



