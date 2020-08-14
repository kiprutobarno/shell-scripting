#!/bin/bash

#function
ok() { echo -e '\e[32m'$1''; } #Green

EXPECTED_ARGS=3
E_BADARGS=65
MYSQL=`which mysql`

Q1="CREATE DATABASE IF NOT EXISTS $1;"
Q2="GRANT ALL ON *.* TO '$2'@'localhost';"
Q3="FLUSH PRIVILEGES;"
SQL="${Q1}${Q2}${Q3}"

if [ $# -ne $EXPECTED_ARGS ]
then 
    echo "Usage: $0 dbname dbuser dbpassword"
    exit $E_BADARGS
fi

$MYSQL -uroot -p -e "$SQL"

ok "Database $1 and user $2 created with password $3"