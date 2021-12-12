#!/bin/bash

echo "Case statements"

# case EXPRESSION in

#   PATTERN_1)
#     STATEMENTS
#     ;;

#   PATTERN_2)
#     STATEMENTS
#     ;;

#   PATTERN_N)
#     STATEMENTS
#     ;;

#   *)
#     STATEMENTS
#     ;;
# esac

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

  Lithuania)
    echo -n "Lithuanian"
    ;;

  Romania | Moldova)
    echo -n "Romanian"
    ;;

  Italy | "San Marino" | Switzerland | "Vatican City")
    echo -n "Italian"
    ;;

  *)
    echo -n "unknown"
    ;;
esac

# Reference: https://linuxize.com/post/bash-case-statement/
# Reference: https://bash.cyberciti.biz/guide/The_case_statement#:~:text=1%20The%20case%20statement%20allows%20you%20to%20easily,The%20pattern%20can%20include%20wildcards.%20More%20items...%20