#!/bin/bash

#find . -name "*.txt" 
read -p "Enter word to search accross all directories : " search_string

grep -i -r -n --exclude=result_file.txt "$search_string" * > result_file.txt



