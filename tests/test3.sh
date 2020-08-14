#!/bin/sh
X=0
while [ -n "$X" ]
do
    echo "Enter some test (RETURN to quit)"
    read X
    if [ -n "$X" ]; then
        echo "You said: $X"
    fi
done