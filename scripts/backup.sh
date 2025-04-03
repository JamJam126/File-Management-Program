#!/bin/bash

log_file="script.log"

# Function to create a backup of a file or directory
create_backup() {
    local target=$1
    local backup_dir="./backups"
    local backup_name="${backup_dir}/$(basename "$target")_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

    # Check if the target file or directory exists
    if [ -e "$target" ]; then
        # Create the backup directory if it doesn't exist
        mkdir -p "$backup_dir"
        
        # Create the backup using tar
        tar -czf "$backup_name" "$target"
        
        # Display a success message and log the action
        echo "Backup created: $backup_name"
        echo "$(date) - Backup created: $backup_name" >> "$log_file"
    else
        # Handle the case where the target doesn't exist
        echo "Error: $target does not exist!"
        echo "$(date) - Backup failed: $target does not exist" >> "$log_file"
    fi
}

# Prompt for file or directory to back up
echo "Enter the file or directory you want to back up:"
read target

# Call the function to create the backup
create_backup "$target"





