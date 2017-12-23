#!/bin/bash

input='in.txt'
friday_file='crusoe.txt'

echo "2 3
3 4
9 19" >> $input

grep -o Saturday $friday_file | wc -w
sed -i 's/Friday/Saturday/g' $friday_file
awk 'BEGIN {a = 0; b = 0;}
{a += $1; b += $2;}
END{ print a " " b}' $input



