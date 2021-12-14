#!/bin/bash
# Directory of script
echo ${0%/*}

echo "---------------------"
echo "Range {start..end}"
for i in {1..5}; do
    echo "Welcome $i"
done
echo "---------------------"

echo "Range with step {start..end..step}"
for i in {5..50..5}; do
    echo "Welcome $i"
done
echo "---------------------"

echo "Range with negative step {start..end..step}"
for i in {50..5..5}; do
    echo "Welcome $i"
done
echo "---------------------"