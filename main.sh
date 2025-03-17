#!/bin/bash


main_menu()
{
	while [ true ];
	do
		echo "================================================"
	    echo "|                                              |"
		echo "|        File and Directory Management         |"
	    echo "|                                              |"
		echo "================================================"
	    echo "| 1. List all files and sub-directories        |"
	    echo "| 2. Create backups                            |" 
	    echo "| 3. Count the number of files in a directory  |"
	    echo "| 4. Display disk usage                        |"
	    echo "| 5. Search for a file                         |"
	    echo "| 6. Compress files or directories             |"
    	echo "| 0. Exit                                      |"
    	echo "================================================"
	 #   echo "Please select an option:"
		read -p "Enter your option: " choice

		case $choice in
			1) ./scripts/list_files.sh ;;
			2) ./scripts/backup.sh ;;
			3) ./scripts/count_files.sh ;;
			4) ./scripts/disk_usage.sh ;;
			5) ./scripts/search.sh ;;
			6) ./scripts/compress.sh ;;
			0)
				echo "Exiting the program..."
				exit 0
				;;
			*)	
				echo "Invalid Choice. Please try again."
				echo ""
				echo ""
				;;
		esac
	done
}


echo "Starting the Program..."
main_menu
