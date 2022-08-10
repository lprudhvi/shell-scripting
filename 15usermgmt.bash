#!/bin/bash
echo "please provide a username"
read user
echo
grep -q $user /etc/passwd
if [ $? == 0 ]
then
	echo "$user already exist"
	echo "please provide new user"
	echo
	exit 0
fi
echo "provide the description for the user"
read desc
useradd $user -c "$desc"
echo "$user is created succesfully"
