#!/bin/sh
uname=$1
RANDOM_FILE=/tmp/$uname.sh
echo "#!/bin/sh
export \$(dbus-launch)
export DISPLAY=$DISPLAY
wineboot&
dolphin& " > $RANDOM_FILE
chmod 777 $RANDOM_FILE
kdesu -u $uname -c $RANDOM_FILE
rm $RANDOM_FILE
