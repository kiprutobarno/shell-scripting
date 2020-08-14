#!/bin/sh

# There is a simpler way of writing if statements: 
# The && and || commands give code to run if the result is true, or false, respectively.

X=0
[ $X -ne 0 ] && echo "X is not Zero " || echo "X is Zero"