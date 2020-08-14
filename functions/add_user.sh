#!/bin/sh

add_a_user()
{
    USER=$1
    PASSWORD=$2
    shift; shift;

    #having shifted twice, the rest is now comments
    COMMENTS=$@
    echo "Adding user $USER ..."
    echo useradd -c "$COMMENTS" $USER
    echo password $USER $PASSWORD
    echo "Added user $USER ($COMMENTS) with password $PASSWORD"
}

###
# Main script body starts here
###

echo "Start of scripts..."
add_a_user kipruto letmein Kipruto Barno the presenter
add_a_user fred badpassword Fred Durst the singer
echo "End of script..."