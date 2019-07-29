 #!/bin/sh
uname=$1
if [ ! -n "$uname" ]; then
exit
fi

uhome=$(eval echo "\$(eval echo ~$uname)")
RANDOM_FILE=/tmp/$uname.sh
echo "#!/bin/sh
~/Console/exit.sh" > $RANDOM_FILE
chmod 777 $RANDOM_FILE
kdesu -u $uname -c $RANDOM_FILE
userdel -r $uname
