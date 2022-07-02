function isPrime() {
	isPrime=1
	number=$1
	for (( i=2; i<=$(($number/2)); i++ ))
	do
		if [ $isPrime -ne 0 ]
		then 
			if [ $(($number % i )) -eq 0 ];
			then 
				isPrime=0
			fi
		fi	
	done
	echo $isPrime
}


echo "Enter number to find its prime factors"
read number
a=0
factors[((a++))]=1
for (( j=2; j<=$(($number/2)); j++ ))
do
	if [ $(($number % $j )) -eq 0 ];
	then 
		primeTest=$( isPrime $j )
		if [ $primeTest -eq 1 ]
		then
			factors[((a++))]=$j
		fi
	fi
done

echo ${factors[@]}
