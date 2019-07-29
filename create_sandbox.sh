 #!/bin/sh
uname=sewine_$(date +%s%N)
useradd $uname -m -g audio -p p
project_path=$(cd `dirname $0`; pwd)
uhome=$(eval echo "\$(eval echo ~$uname)")

cp -R $project_path/default/* $uhome/
chmod +x -R $uhome
chown -R $uname $uhome
echo "sandbox username: $uname"
