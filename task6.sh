#!/bin/bash

awk '{ print $4 }' data.txt > numbers_list.txt
dos2unix numbers_list.txt
sort numbers_list.txt >  numbers_list_sorted.txt

datamash --header-out mean 1 < numbers_list_sorted.txt
datamash --header-out median 1 < numbers_list_sorted.txt
datamash --header-out sum 1 < numbers_list_sorted.txt
datamash --header-out min 1 < numbers_list_sorted.txt
datamash --header-out max 1 < numbers_list_sorted.txt
