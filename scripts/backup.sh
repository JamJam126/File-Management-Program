#!/bin/bash

log_file="script.log"

echo "Enter the file or directory you want to back up:"
read target
backup_dir="./backups"
backup_name="${backup_dir}/$(basename "target")_backup_$(date +%Y%m%d_%H%M%S).tar.gz"

if [ -e "$target" ]; then
	mkdir -p "$backup_dir"

    tar -czf "$backup_name" "$target"
    echo "Backup created: $backup_name"
    echo "$(date) - Backup created: $backup_name" >> "$log_file"
else
    echo "Error: $target does not exist!"
    echo "$(date) - Backup failed: $target does not exist" >> "$log_file"
fi





