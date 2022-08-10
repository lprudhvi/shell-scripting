#!/bin/bash
echo enter the ip
read ip
ping -c1 $ip &> /dev/null 
if [ $? = 0 ]
then
	echo "ping works"
else
	echo "unable to reach"
fi
