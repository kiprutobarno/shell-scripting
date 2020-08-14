#!/bin/sh

echo -en "Please guess the magic number: "
read X
echo $X | grep "[^0-9]" > /dev/null 2>&1
if [ "$?" -eq "0" ]; then
    # if the grep found something other than 0-9
    # then it's not an integer
    echo "Sorry, wanted a number"

else
    # The grep found only 0-9, so it's an integer
    # we can safely do a testsShell Scripting: Expert Recipes for Linux, Bash, and more
fi