i wanna list all files into my README.md

i search it and find something funny 

so...

today i learn somthing

i wronten them down

it's an easy shell script so i writen a shell script 

- Version 1 

```

#!/bin/bash -       
#title           :list_all_md_file_into_README_file.sh
#description     :This script will list all md file into README.md
#author		 :oiolong
#date            :20110125
#version         :0.1    
#usage		 :bash list_all_md_file_into_README_file.sh
#notes           :Install Vim and Emacs to use this script.
#bash_version    :4.1.5(1)-release
#source:https://stackoverflow.com/questions/2699666/replace-delimited-block-of-text-in-file-with-the-contents-of-another-file
#==============================================================================


for file in *.md ; do
	if [ "$file" == "README.md" ]
		then
			echo "This is README.md !!! Number is an even number!!"
		continue
	fi

	list_files="$list_files($file)\n"
	#echo "$(basename "$file")"
    
done

printf $list_files


sed -i -ne '/<!-- BEGIN realm -->/ {p; ' $list_files -e ':a; n; /<!-- END realm -->/ {p; b}; ba}; p' server.xml

```


the sed shell script is i found it in stackoverflower

source : https://stackoverflow.com/questions/2699666/replace-delimited-block-of-text-in-file-with-the-contents-of-another-file

source: https://codertw.com/%E5%89%8D%E7%AB%AF%E9%96%8B%E7%99%BC/392291/
