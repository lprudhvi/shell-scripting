#!/bin/bash
cd /home
for DIR in *
do 
chk=$(grep -c "/home/$DIR" /etc/passwd)
if [ $chk -ge 1 ]
then
echo "$DIR is asssigned to a user"
else
echo "$DIR is not assigned to a user"
fi
done
