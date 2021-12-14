#!/bin/bash

# Default variable is in global scope
# in the function should you local keyword to define local variable

my_var=20

my_fn() {
    local my_var=10
    echo "my_fn \$my_var => $my_var"
}

echo "global \$my_var => $my_var"
my_fn

greeting="Welcome"
user=$(whoami)
day=$(date +%A)

echo -e "$greeting back $user!\nToday is $day, which is the best day of the entire week!"
echo "Your Bash shell version is: $BASH_VERSION. Enjoy!"