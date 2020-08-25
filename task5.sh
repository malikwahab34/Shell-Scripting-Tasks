#!/bin/bash

tar -xzf logs.tgz
num1=9.5
for i in *.log;
do
	num=$(grep -F run-time $i | grep -Eo '[+-]?[0-9]+([.][0-9]+)?')
	num2=$(echo $num | awk '{printf("%.1f\n", $1)}')
	value=$(echo $num2'<'$num1 | bc -l)
	if [ $value -eq 1 ]
	then
		echo $i
	fi
done
