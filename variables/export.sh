#!/bin/sh
echo "My variable is: $MYVAR"
MYVAR="Hello Kipruto"
echo "My variable is: $MYVAR"
# type export MYVAR="Hello John"

# once the script exitsx its environemnt is destroyed. 
# But MYVAR keeps the value of Hello John within the interactive shell
# To receive environment changes back from the script, we must source the script
# You can source a script via "." (dot) command