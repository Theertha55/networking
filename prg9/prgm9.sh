#!/bin/bash
read -p "Enter first number: " a
read -p "Enter second number: " b
read -p "Enter third number: " c
read -p "Enter fourth number: " d
if [ $a -lt $b ] && [ $a -lt $c ] && [ $a -lt $b ]
then
echo "$a is the smallest number "
elif [ $b -lt $c ] && [ $b -lt $d ] && [ $b -lt $a ]
then
echo " $b is smaller "
elif [ $c -lt $b ] && [ $c -lt $d ] && [ $c -lt $a ] 
then
echo "$c is the smallest number "
else
echo "$d is smaller number"
fi  

