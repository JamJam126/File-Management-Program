#!/bin/bash

# TODO: Implement file counting in a directory.
# - Log the action in `script.log`.
echo "Enter directory path:"
read dir

if [ -d "$dir" ]; then
    count=$(ls -1 "$dir" | wc -l)
    echo "Number of files: $count"
else
    echo "Directory not found!"
fi

