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
  imagemagick \
  file \
  openjdk-11-jdk \
  tomcat9 \
  nginx \ 
  fail2ban \
  p7zip-full

echo 'hide_userland_threads=1' > ~/.htoprc

adduser sodon
usermod -a -G tomcat7 sodon
usermod -a -G adm sodon

cp '$DIR/mysql/sodon.cnf' /etc/mysql/conf.d/sodon.cnf
cp '$DIR/sudo/sodon' /etc/sudoers.d/sodon
