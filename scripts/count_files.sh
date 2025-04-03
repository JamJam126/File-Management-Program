#!/bin/bash

<<<<<<< HEAD
LOG_FILE="script.log"

# Function to count files in a directory
count_files_in_directory() 
{
	read -p "Enter directory path: " dir

	# Check if the directory exists
	if [ -d "$dir" ]; then
    
		# Count files and display the result
		count=$(ls -1 "$dir" | wc -l)
    	echo "Number of files in $dir: $count"

		# Log the result
		echo "$(date) - Counted $count files in $dir" >> "$LOG_FILE" 
	else
    	echo "Directory not found!"
	fi
}

# Function Call
count_files_in_directory

=======
# TODO: Implement file counting in a directory.
# - Log the action in `script.log`.
LOG_FILE="script.log"

read -p "Enter directory path: " dir

if [ -d "$dir" ]; then
    count=$(ls -1 "$dir" | wc -l)
    echo "Number of files in $dir: $count"
	echo "$(date) - Counted $count files in $dir" >> "$LOG_FILE" 
else
    echo "Directory not found!"
fi
>>>>>>> 1750d1e6091f324753e520493cd0e2e7fd6f1863

