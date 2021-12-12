#!/bin/bash

echo "---- Simple ----"
site="linuxconfig.org"
echo "\${site} => ${site}"

echo "\$site => $site"

echo "You are reading this article on ${site}_!"
echo "------------------------"

# Raise error
# set -o nounset
# echo "You are reading this article on $site_!"

echo "---- Indirection ----"
echo "${HOME}"

variable_to_inspect="HOME"
echo "${!variable_to_inspect}"
echo "------------------------"

echo "---- Case modification expansion ----"
echo "Initial lower case"
name="fast"
echo "\${name} => $name"
echo "Upper case the 1st character: \${name^} => ${name^}"
echo "Upper case: \${name^^} => ${name^^}"

echo -e "\nInitial upper case"
name=$( echo ${name^^} )
echo "\${name} => $name"
echo "Lower case the 1st character: \${name,} => ${name,}"
echo "Lower case: \${name,,} => ${name,,}"
echo "Lower case with pattern: \${name,,[AS]} => ${name,,[AS]}"

echo -e "\nArray case modification"
my_array=(one two three)
echo "\${my_array[@]} => ${my_array[@]}"
echo "\${my_array[@]^^} => ${my_array[@]^^}"
echo "\${my_array[2]^^} => ${my_array[2]^^}"
echo "------------------------"

echo "---- Substring removal ----"
name="Fast"
echo "\$name => $name"
echo "Remove matching pattern from the beginning of the string"
echo "Remove 'Fa' \${name#Fa} => ${name#Fa}"
echo "Remove the longest substring until 'Fa' \${name##Fa} => ${name##Fa}"

echo -e "\nRemove the longest substring with pattern"
name="Fast Nguyen Tan"
echo "\$name => $name"
echo "\${name#*a} => ${name#*a}"
echo "\${name##*a} => ${name##*a}"

echo -e "\nRemove matching pattern from the end of the string"
echo "\$name => $name"
echo "\${name%n*} => ${name%n*}"
echo "\${name%%n*} => ${name%%n*}"

my_array=(one two three)
echo "\${my_array[@]} => ${my_array[@]}"

# one remove the first substring o => ne
# two remove remove the first substring o => ''
# three remove remove the first substring o => three
echo "\${my_array[@]#*o} => ${my_array[@]#*o}"
echo "------------------------"

echo "---- Search and replace pattern ----"
echo "Syntax: \${parameter/pattern/string}"

phrase="yellow is the sun and yellow is the lemon"
echo "\$phrase $phrase"
# Only replace the 1st match
echo "\${phrase/yellow/red} => ${phrase/yellow/red}"

# Replcase all matches with `//`
echo "\${phrase//yellow/red} => ${phrase//yellow/red}"

echo -e "\nWork with array"
my_array=(one two three)
echo "\${my_array[@]} => ${my_array[@]}"
echo "\${my_array[@]/o/u} => ${my_array[@]/o/u}"
echo "------------------------"

echo "---- Substring expansion ----"
echo "Syntax: \${parameter:offset} or \${parameter:offset:length}"

# If not provided length, it proceeds to the end of string

name="FastNguyen"
echo "\$name => $name"
echo "\${name:2} => ${name:2}"
echo "\${name:4:6} => ${name:4:6}"

echo -e "\nNegative offset"
# :- is used for default parameter, so it needs space here
echo "\${name: -6} => ${name: -6}"

echo -e "\nNegative length"
# Cut string at the 4th position to the end, and remove the num of $length characters from the end
echo "\${name:4:-1} => ${name:4:-1}"

echo -e "\nWith array"
my_array=(one two three)
echo "\${my_array[@]} => ${my_array[@]}"
echo "\${my_array[@]:0:2} => ${my_array[@]:0:2}"
echo "\${my_array[@]: -2} => ${my_array[@]: -2}"

# Raise error when length is negative
# echo "\${my_array[@]:0:-2} => ${my_array[@]:0:-2}"
# bash: -2: substring expression < 0
echo "------------------------"

echo "---- Length expansion ----"
echo "Syntax: \${#parameter}"

name="FastNguyen"
echo "\$name => $name"
echo "\${#name} => ${#name}"

echo -e "\nWith array"
my_array=(one two three)

echo "\${my_array[@]} => ${my_array[@]}"
echo "Length of \${#my_array[@]} => ${#my_array[@]}"
# 3
echo "Length of \${#my_array[2]} => ${#my_array[2]}"
# 5
echo "------------------------"