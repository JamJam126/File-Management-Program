#!/bin/bash

log_file="script.log"

echo "Enter the file or directory you want to back up:"
read target

backup_name="${target}_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if [ -e "$target" ]; then
    tar -czf "$backup_name" "$target"
    echo "Backup created: $backup_name"
    echo "$(date) - Backup created: $backup_name" >> "$log_file"
else
    echo "Error: $target does not exist!"
    echo "$(date) - Backup failed: $target does not exist" >> "$log_file"
fi





