n=0

while [ $n -lt 10 ]
do
numbers[n]=$(($(($RANDOM%900))+100))
((n++))
done

echo ${numbers[@]}

for ((i=0;i<$n;i++))
do
smallest=999
indexOfSmallest=$i
for ((j=$i;j<$n;j++))
do

if [ ${numbers[j]} -lt $smallest ]
then
smallest=${numbers[j]}
indexOfSmallest=$j
fi
done
temp=${numbers[i]}

numbers[i]=${numbers[indexOfSmallest]}
numbers[indexOfSmallest]=$temp
done

echo ${numbers[@]}
echo second Smallest ${numbers[1]}
echo second Largest ${numbers[8]}
