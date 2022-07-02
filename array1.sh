secondSmallest=198
smallest=739

secondLargest=900
largest=400

i=0
for((i=1;i<=10;i++))
do
numbers[i]=$((RANDOM%900+100))
if [ ${numbers[i]} -lt $smallest ]
then
secondSmallest=$smallest
smallest=${numbers[i]}
elif [ ${numbers[i]} -lt $secondSmallest ]
then
secondSmallest=${numbers[i]}
fi

if [ ${numbers[i]} -gt $largest ]
then
secondLargest=$largest
largest=${numbers[i]}
elif [ ${numbers[i]} -gt $secondLargest ]
then
secondLargest=${numbers[i]}
fi
done


echo ${numbers[@]}
echo Second smallest number is $secondSmallest
echo Second largest number is $secondLargest

