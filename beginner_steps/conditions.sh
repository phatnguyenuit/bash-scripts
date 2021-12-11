#!/bin/bash

num_a=100
num_b=300

if [ $num_a -lt $num_b ]; then
    echo "$num_a is less than $num_b!"
elif [ $num_a -eq $num_b ]; then
    echo "$num_a is equal to $num_b!"
else
    echo "$num_a is greater than $num_b!"
fi