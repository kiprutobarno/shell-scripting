MYNAME=`grep "^${USER}:" /etc/passwd | cut -d: -f2`
echo $MYNAME