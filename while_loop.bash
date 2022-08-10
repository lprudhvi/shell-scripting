echo Enter value for n:
read n
i=0
while [ $i -lt $n ]
do
	echo $i
	i=$(expr $i + 1)
done
