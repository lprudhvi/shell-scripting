#!/bin/bash
for i in pru*
do
	echo "assign permissiions to $i"
	chmod a+x $i
	sleep 1
done
