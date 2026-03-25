#!/bin/bash
read -p "enter first number:" a
read -p "enter second number:" b
echo "before swap first number=" $a
echo "before swap second number=" $b

temp=$a
a=$b
b=$temp
echo "after swap first number=" $a

echo "after swap first number=" $b

