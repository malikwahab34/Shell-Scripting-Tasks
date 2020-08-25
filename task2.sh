#!/bin/bash


row=$1
column=$2
awk 'NR=='"$row"'{print NR,$'"$column"'}' data.txt
