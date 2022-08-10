#!/bin/bash
tar -cvf /root/shellscripting/backup.tar /root/shellscripting
gzip /root/shellscripting/backup.tar
find /root/shellscripting -mtime -1 -type f -print &> /dev/null
if [ $? == 0 ]
then
	echo "backup created"
	echo
	echo "archieved backup"
	#scp /root/shellscripting/backup.tar.gz root@: /root/shellscripting
else
	echo "backup failed"
fi
