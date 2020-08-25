#!/bin/bash
if [ -d "backup/$1" ] 
then
    echo "Directory backup exists."
    echo "Checking for changes in the files"
    for file_name in $(ls $1/*.c);
	do
		echo "Checking file $file_name"
		file1=(`md5sum $file_name`)
		file2=(`md5sum backup/$file_name`)
		if [ "$file1" = "$file2" ]
			then
 			echo "Files have the same content"
		else
			echo "Files don't have same content, creating new backup of the file" 	
	    	cp $file_name backup/$file_name
		fi
	done
else
    echo "Backup directory doesn't exist."
    echo "Creating back up directory..."
    mkdir backup/$1
    cp $1/*.c backup/$1
fi


