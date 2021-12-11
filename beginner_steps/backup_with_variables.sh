#!/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

user=$(whoami)
input=/home/$user/code
# ${user} is parameter expansion 
# because it is followed by characters
# So we can not use $user instead
output=/tmp/${user}_code_$(date +%Y-%m-%d_%H%M%S).tar.gz

# Ignore stderr with `2> /dev/null`
tar -czf $output $input 2> /dev/null
echo "Backup of $input completed! Details about the output backup file:"
ls -l $output