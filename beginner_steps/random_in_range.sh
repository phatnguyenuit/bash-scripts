#!/bin/bash

function randomInRange() {
    min=$1
    max=$2
    delta=$( expr $max - $min + 1 )

    # $RANDOM has value in range [0-32767]
    echo "$( expr $min + $RANDOM % $delta)"
}

if [ $# -lt 2 ]
then
    echo "Error: You need to provide 2 parameters \$min and \$max"
    exit 0
fi

random_number=$(randomInRange $1 $2)

echo "Random number from [$1-$2] is: $random_number"