#!/bin/sh
X=5
if [ "$X" -lt "0" ]
then
    echo "X is less than zero"
fi
if [ "$X" -gt "0" ]; then
    echo "X is more than zero"
fi

if [ "$X" -le "0" ]; then
    echo "X is less or equal to zero"
fi
 
 [ "$X" -le "5" ] && \
      echo "X is less than or equal to  five"

# Note that we can use the semicolon (;) to join two lines together. 
# This is often done to save a bit of space in simple if statements
# The backslash (\) serves a similar, but opposite purpose: 
# it tells the shell that this is not the end of the line, 
# but that the following line should be treated as part of the current line. 
# This is useful for readability. It is customary to indent the following line after a backslash (\) or semicolon (;).