#!/bin/bash

echo "Enter a number"
read number
reverse=""

temp=${#number}
for (( i=$temp-1; i>=0; i-- ))
do
   reverse="$reverse${number:$i:1}"
done
if [ $number == $reverse ]
then
    echo "Number is palindrome"
else
    echo "Number is not palindrome"
fi
