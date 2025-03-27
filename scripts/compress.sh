#!/bin/bash
log_file="script.log"

echo "Enter the files or directories to compress (space-separated):"
read input_items

archive_name="compressed_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$archive_name" $input_items

if [ $? -eq 0 ]; then
    echo "Compressed into $archive_name"
    echo "$(date) - Compressed: $archive_name" >> "$log_file"
else
    echo "Compression failed."
    echo "$(date) - Compression failed" >> "$log_file"
fi

