#!/bin/bash

# Description                   Numeric Comparison   String Comparison
# less than                     -lt                  <
# greater than                  -gt                  >
# equal                         -eq                  =
# not equal                     -ne                  !=
# less or equal                 -le                  N/A
# greater or equal              -ge                  N/A                   
# Is zero string length         N/A                  -z string                   
# Is non- zero string length    N/A                  -n string                   


# Check file & folder
# -e –> file exists
# -f –> file exists and is not a directory
# -d –> directory exists
# -x –> file is executable
# -w –> file is writable
# -r –> file is readable

# String special case with `=` & `==`

# if [ $str1 = $str2 ]; then...string equal comparison
# if [[ $str1 == $str2 ]]; then...pattern equal comparison


# Examples

# $? last execution output
# Numeric
[ 100 -eq 50 ]; echo $?


# String
[ "GNU" = "UNIX" ]; echo $?

# `echo $?` is used to check returned value of the previous executed evaluation
# $? = 0 => true
# $? = 1 => false

# Samples

string_a="UNIX"
string_b="GNU"

echo "Are $string_a and $string_b strings equal?"
[ $string_a = $string_b ]
echo $?

num_a=100
num_b=100

echo "Is $num_a equal to $num_b ?" 
[ $num_a -eq $num_b ]
echo $?