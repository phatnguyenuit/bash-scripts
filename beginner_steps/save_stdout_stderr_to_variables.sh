#!/bin/bash

my_stdout=$(ls README.md not-exits-file 2> /dev/null)

# [> /dev/null] to exclude stdout if exists
my_stderr=$(ls not-exits-file  2>&1 > /dev/null)


echo "my_stdout => $my_stdout"
echo "my_stderr => $my_stderr"
