#!/bin/bash


LOG_FILE="script.log"
<<<<<<< HEAD

# Function to list files and directories with detailed information
list_files() 
{
    read -p "Enter directory path (default: current): " dir
    dir=${dir:-.}

    # Check if directory exists
    if [ -d "$dir" ]; then

        # Log the action
        echo "$(date): Listing files in directory: $dir" >> "$LOG_FILE"
        
        # List files with detailed information
        ls -lh "$dir"
    else
        echo "Error: Directory '$dir' does not exist." | tee -a "$LOG_FILE"
    fi
}

# Call the function
list_files

=======
read -p "Enter directory path (default: current): " dir
dir=${dir:-.}  
if [ -d "$dir" ]; then
    echo "$(date): Listing files in directory: $dir" >> "$LOG_FILE"
    ls -lh "$dir"
else
    echo "Error: Directory '$dir' does not exist." | tee -a "$LOG_FILE"
fi
>>>>>>> 1750d1e6091f324753e520493cd0e2e7fd6f1863
