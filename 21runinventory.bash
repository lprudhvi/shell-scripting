#!/bin/bash
echo
echo "select any one of the below enry for your database entry: "
echo "a = ADD   a record"
echo "d= delete a record"
read choice
case $choice in 
	a) /root/shellscripting/19inventory.sh;;
	d) /root/shellscripting/20deleteinventory.sh;;
	*) echo " Error, Invalid option --please choose the correct option a or d"
esac
