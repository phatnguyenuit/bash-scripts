#!/bin/bash

# if [ -z $1 ]; then
# 	echo "No shape was specified."

# elif [[ "$1" == "square" ]]; then
# 	echo "You specified 'square'."

# elif [[ "$1" == "circle" ]]; then
# 	echo "You specified 'circle'."

# elif [[ "$1" == "triangle" ]]; then
# 	echo "You specified 'triangle'." 
    
# else
# 	echo "Unknown shape '${1}'."
#     exit 1

# fi

case "${1}" in
	"")         echo "No option was specified."; exit 1 ;;
  square)     echo "You specified 'square'." ;;
  circle)     echo "You specified 'circle'." ;;
  triangle)   echo "You specified 'triangle'." ;;
  *)          echo "Unknown shape '${1}'."; exit 1 ;;
esac