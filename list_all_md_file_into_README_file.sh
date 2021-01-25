#!/bin/bash -       
#title           :list_all_md_file_into_README_file.sh
#description     :This script will list all md file into README.md
#author		 :oiolong
#github		 :https://github.com/oiolong
#date            :20110125
#version         :0.2    
#usage		 :bash list_all_md_file_into_README_file.sh
#notes           :Install Vim and Emacs to use this script.
#bash_version    :4.1.5(1)-release
#source:https://stackoverflow.com/questions/2699666/replace-delimited-block-of-text-in-file-with-the-contents-of-another-file
#==============================================================================


#for file in *.md ; do
#	if [ "$file" == "README.md" ]
#		then
#			echo "This is README.md !!! Number is an even number!!"
#		continue
#	fi
#
#	list_files="$list_files($file)\n"
#	#echo "$(basename "$file")"
#    
#done
#

#printf $list_files > list_files.list



tree=$(tree -tf --noreport -I '*~' --charset ascii $1 |
	       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "# Project tree\n\n${tree}" > list_files.list 

sed -i -ne '/- file_lists -/ {p; r list_files.list' -e ':a; n; / - Eof file_lists -/ {p; b}; ba}; p' README.md



