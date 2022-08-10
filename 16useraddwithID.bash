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
echo "Do you want to specify $user ID? (y/n): "
read choice
echo 
if [ $choice == y ]
then
	echo "enter the userID greater than 1001"
	read uid
	grep -q $uid /etc/passwd
	if [ $? == 0 ]
	then
        echo "$uid already exist"
        echo "please provide new uid"
        echo
        exit 0
	fi
	useradd $user -c "$desc" -u "$uid"
	echo
	echo "$user is created with specified UID"
elif [ $choice == n ]
then
	echo "system defined UID will be created"
	useradd $user -c "$desc"
	echo
	echo "$user is created succesfully with system defined UID"
else
	echo "provide either y/n"
fi

