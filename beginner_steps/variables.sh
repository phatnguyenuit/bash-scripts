#!/bin/bash

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo -e "$greeting back $user!\nToday is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"