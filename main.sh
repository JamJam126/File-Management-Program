#!/bin/bash


main_menu()
{
	while [ true ];
	do
		read choice

		case $choice in
			1) ./scripts/list_files.sh ;;
			2) ./scripts/backup.sh ;;
			3) ./scripts/count_files.sh ;;
			4) ./scripts/disk_usage.sh ;;
			5) ./scripts/search.sh ;;
			6) ./scripts/compress.sh ;;

		esac
	done
}


echo "Starting the Program..."
main_menu
