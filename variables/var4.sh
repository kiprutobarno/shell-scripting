#!/bin/sh

# Passing the "-en" to echo tells it not to add a linebreak

echo -en "What is your name [ `whoami` ]"
read myname
if [ -z "$myname" ]; then
    myname=`whoami`
fi
echo "Your name is : $myname "