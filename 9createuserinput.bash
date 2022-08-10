#!/bin/bash
echo "how many files need to created"
read file
echo 
echo "please enter the file name prefix"
read name
for i in $(seq 1 2 $file)
do
	touch $name$i
done
