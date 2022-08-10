function display()
{
	a=$1
	b=$2
	a=$(($a + 1))
	b=$(($b + 1))
}
a=10
b=20
echo Before updation a=$a and b=$b
display $a $b
echo After updation a=$a and b=$b
