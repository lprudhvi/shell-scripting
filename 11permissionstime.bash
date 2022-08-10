#!/bin/bash
total=`ls -l pru* |wc -l`
echo "it will take $total seconds to complete"
echo
for i in pru*
do 
	echo "assign write permissions to $i"
	chmod a+w $i
	sleep 1
done
	
