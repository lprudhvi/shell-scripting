#!/bin/bash
#df -f|egrep -v "tmpfs|devtmpfs"
disc=`df -h|grep -i "/dev/xvda1"|awk '{print $5}'|cut -d "%" -f1`
for disc in $disc
do
	if [ $disc -ge 50 ]
	then 
		echo "check disc space $disc which had reached threshold value"
	fi
done
