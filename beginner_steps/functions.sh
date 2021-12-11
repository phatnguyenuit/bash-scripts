#!/bin/bash

function do_something {
    echo "This is 'do_something' fucntion"
}

function print_user_details {
    echo "User Name: $(whoami)"
    echo "User Directory: $HOME"
}

do_something
print_user_details