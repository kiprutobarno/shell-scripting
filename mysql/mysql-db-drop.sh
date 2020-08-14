#!/bin/bash

#function
ok() { echo -e '\e[32m'$1''; } #Green

EXPECTED_ARGS=1
E_BADARGS=65
MYSQL=`which mysql`

SQL="DROP DATABASE IF EXISTS $1;"

if [ $# -ne $EXPECTED_ARGS ]
then 
    echo "Usage: $0 dbname"
    exit $E_BADARGS
fi

$MYSQL -uroot -p -e "$SQL"

ok "Database $1 dropped"