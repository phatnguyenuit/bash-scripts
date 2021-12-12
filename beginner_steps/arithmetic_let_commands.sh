#!/bin/bash
a=15
echo "a = $a";

let a++
echo "a++ = $a";

let a--
echo "a-- = $a";

let b=$a+3;
echo "$a+3=$b"

let c=$a*2
echo "$a*2=$c"

let d=$a*2/3
echo "$a*2/3=$d"

let e=($a**2)/2
echo "($a**2)/2=$e"
