# File and Directory Management Program

## Overview
This bash script allows you to manage files and directories efficiently. It provides features like:
- Listing files and directories with details
- Creating backups for files or entire directories
- Counting files in a given directory
- Checking disk usage for directories
- Searching files by name or extension
- Compressing files and directories

## Features
1. **List Files and Directories**: Displays all files and subdirectories in a given directory.
2. **Create Backup**: Backs up individual files or entire directories.
3. **Count Files**: Counts the number of files in a specified directory.
4. **Disk Usage**: Displays the disk usage of a given directory.
5. **Search Files**: Searches for a file or extension in a specified directory.
6. **Compress**: Compresses files or directories into a `.tar.gz` archive.

## Requirements
- Bash-compatible shell (Linux, macOS, WSL, or similar).
- No additional dependencies are required.

## Installation and Usage
1. Clone the repository:
    ```bash
    git clone https://github.com/JamJam126/File-Management-Program.git
    cd File-Management-Program
    ```

2. Give execution permissions to the script files:
    ```bash
    chmod +x main.sh
    chmod +x scripts/*.sh
    ```

3. Run the main program:
    ```bash
    ./main.sh
    ```

## Logging
All actions performed by the user are logged in `script.log` in the same directory.

## Notes
- Make sure the directories and files you are interacting with have the correct read/write permissions.
