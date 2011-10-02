#!/bin/bash

LINES=`wc -l $1 | awk '{print $1}'`
NUMBER=$RANDOM
let "NUMBER %= $LINES"
let "NUMBER += 1" # "1 to $LINES" instead of "0 to ($LINES-1)"

CHANCE=$RANDOM
let "CHANCE %= 100" #turn it into a percentage
let "CHANCE += 1"   #1-100 instead of 0-99

echo `sed -n ${NUMBER}p $1`
echo "Roll: $CHANCE"