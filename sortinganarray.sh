#!/bin/bash 

for((i=0;i<10;i++))
do
	arr[$i]=$((RANDOM%900+100))
done
		echo "Array"
 		echo ${arr[@]}
temp=0
for((i=0;i<10;i++))
do
	for((n=i+1;n<10;n++))
	do
		if [ ${arr[i]} -gt ${arr[n]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[n]}
			arr[n]=$temp
		fi
	done
done

echo "sorted Array"
echo ${arr[@]}
