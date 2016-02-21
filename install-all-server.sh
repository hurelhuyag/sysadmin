#!/bin/bash
#

# working dir
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

sed -i 's/..\.archive\.ubuntu\.com/mirror.datacenter.mn/g' /etc/apt/sources.list

apt-get update 
apt-get upgrade
apt-get install \
mariadb-server \
graphicsmagick \
openjdk-8-jdk \
tomcat7 \
nginx \ 
fail2ban \
lxc \
p7zip-full \
percona-xtrabackup

echo 'hide_userland_threads=1' > ~/.htoprc

ln -s /var/lib/tomcat7/common/ /usr/share/tomcat7/common
ln -s /var/lib/tomcat7/server/ /usr/share/tomcat7/server
ln -s /var/lib/tomcat7/shared/ /usr/share/tomcat7/shared

adduser sodon
usermod -a -G tomcat7 sodon
usermod -a -G adm sodon

cp '$DIR/mysql/sodon.cnf' /etc/mysql/conf.d/sodon.cnf
cp '$DIR/sudo/sodon' /etc/sudoers.d/sodon
