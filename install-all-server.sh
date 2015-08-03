#!/bin/bash
#

sudo sed -i 's/..\.archive\.ubuntu\.com/mirror.datacenter.mn/g' /etc/apt/sources.list
sudo apt-get update 
sudo apt-get upgrade
sudo apt-get install \
mariadb-server \
graphicsmagick \
openjdk-8-jdk \
tomcat7 \
nginx \ 
fail2ban \
lxc \
p7zip-full \
percona-xtrabackup
