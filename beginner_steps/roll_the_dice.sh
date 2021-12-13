#!/bin/bash

function randomInRange() {
    min=$1
    max=$2
    delta=$( expr $max - $min + 1 )

    # $RANDOM has value in range [0-32767]
    echo "$( expr $min + $RANDOM % $delta)"
}

# Define dice values from 1 to 6
min=1
max=6

read -p "Enter the dice number you guess: " guess

if [ -z $guess ] || [ $guess -lt $min ] || [ $guess -gt $max ]
then
    echo "Error: You need to guess 1 number in range [$min-$max]"
    exit 0
fi

random_dice=$(randomInRange $min $max)

if [ $random_dice -eq $guess ]
then
    echo "🎉✨ Congrats! You win!"
else
    echo "Dice: $random_dice "
    echo "❌ You lose. Try again!"
fi
