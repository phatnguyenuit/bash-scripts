#!/bin/bash

echo "Part 1: For loop"
for i in 1 2 3; do
    echo $i
done

echo -e "bash\nscript\nworld" > items.txt

for item in $( cat items.txt ); do
    echo "$item => length = $( echo -n $item | wc -c )"
done

rm -rf items.txt

# Exercise: Print file & folder name length
for fileOrFolder in $( ls ); do
    echo "fileOrFolder: $fileOrFolder => name length = $( echo -n $fileOrFolder | wc -c )"
done

echo "---------------------------------------"

echo "Part 2: While loop"

counter=0
while [ $counter -lt 3 ]; do
    let counter+=1
    echo $counter
done

echo "---------------------------------------"

echo "Part 2=3: Until loop"

# Run do-done code until condition changes from false to true
counter=6
until [ $counter -lt 3 ]; do
    let counter-=1
    echo $counter
done

echo "---------------------------------------"
