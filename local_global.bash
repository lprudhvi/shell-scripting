a=100
function increment()
{
	echo Inside function $a
	local a=10
	a=$(($a + 1))
	echo $a
}
increment 10
echo outside function $a
