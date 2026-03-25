#!/bin/bash

echo "Enter the coefficient of x^2:"
read a

echo "Enter the coefficient of x:"
read b

echo "Enter the constant term:"
read c

if [ "$a" -ne 0 ]; then
    d=$(echo "$b*$b - 4*$a*$c" | bc)
    f=$(echo "-1*$b" | bc)
    p=$(echo "2*$a" | bc)

    if [ "$d" -lt 0 ]; then
        x=$(echo "-1*$d" | bc)
        s=$(echo "scale=2; sqrt($x)" | bc)

        echo "First root: ($f + ${s}i)/$p"
        echo "Second root: ($f - ${s}i)/$p"

    elif [ "$d" -eq 0 ]; then
        res=$(echo "scale=2; $f/$p" | bc)
        echo "The root is: $res"

    else
        s=$(echo "scale=2; sqrt($d)" | bc)
        res1=$(echo "scale=2; ($f + $s)/$p" | bc)
        res2=$(echo "scale=2; ($f - $s)/$p" | bc)

        echo "First root: $res1"
        echo "Second root: $res2"
    fi
else
    echo "Coefficient of x^2 cannot be zero"
fi

