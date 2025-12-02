#!/bin/bash
echo "===================================================="
echo "Hello and Welcom to 'simple file manager in bash'"
#ls -ltrh
echo "===================================================="
     while true; do
	clear
	echo "=================================="
	echo "MAIN MENU"
	echo "=================================="
	echo "1) list of files"
	echo "2) delete file"
	echo "3) copy file"
	echo "0) Exit"
	read -p "Enter your job:" chois
		case $chois in
			1)
				ls -ltrha
				;;
			2)
				read -p "Enter your file name:" fileName;
				rm -rf ${fileName};
				;;
			3)
				read -p "Enter your file name:" fileName;
				read -p "Enter your location for copy file:" location;			 
				cp ${fileName} ${location};
				;;
			0)
				exit 0
				;;
			*)
				echo "Are you kidding me?"
				;;
		esac
	echo
	read -p "Enter Enter for countinue!"
     done
