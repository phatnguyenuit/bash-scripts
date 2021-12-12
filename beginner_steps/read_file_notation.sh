#!/bin/bash

echo "hello" > read_file_notation_text.txt

catVar=$(cat read_file_notation_text.txt)
readNotationVar=$(< read_file_notation_text.txt)

echo "catVar => $catVar"
echo "readNotationVar => $readNotationVar"