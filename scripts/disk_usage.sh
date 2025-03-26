#!/bin/bash

# TODO: Implement disk usage display.
# - Log the action in `script.log`.

echo "Enter directory path:"
read dir

if [ -d "$dir" ]; then
    du -sh "$dir"
else
    echo "Directory not found!"
fi



