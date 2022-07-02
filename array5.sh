function getReverse() {
	reverse=""
	num=$1
	while [ $num -gt 1 ]
	do
		remainder=$(($num%10))
		reverse="$reverse$remainder"
		num=$(($num/10))
	done
	echo $reverse
}

function isPalindrome() {
	if [ "$1" = "$2" ] 
	then
		echo 1
	else
		echo 0
	fi
}

i=0
for (( i=10; i<100; i++ ))
do
	reverse=$( getReverse $i )
	isPalindrome=$( isPalindrome $i $reverse )
	if [ $isPalindrome -eq 1 ]
	then
		numbers[((i++))]=$i
	fi 
done

echo ${numbers[@]}
