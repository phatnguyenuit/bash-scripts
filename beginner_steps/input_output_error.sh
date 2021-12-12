#!/bin/bash

# stdout vs stderr

# '>' notation is used to redirect stdout
# '2>' notation is used to redirect stderr
# '&>' notation is used to redirect both stdout and stderr

echo "-- stdout --"
ls date.sh not-exist > stdout.txt
echo "file content:"
cat stdout.txt
rm -rf stdout.txt
echo "-- stdout --"

echo "-- stderr --"
ls date.sh not-exist 2> stderr.txt
echo "file content:"
cat stderr.txt
rm -rf stderr.txt
echo "-- stderr --"

echo "-- stdout and stderr --"
ls date.sh not-exist &> stdout_and_stderr.txt
echo "file content:"
cat stdout_and_stderr.txt
rm -rf stdout_and_stderr.txt
echo "-- stdout and stderr --"

echo -e "You can write new file by using \"cat > filename \"\nUntil press Ctrl+D";
echo -e "You can read file by using \"cat < filename \"";
