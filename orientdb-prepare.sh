#!/bin/bash
# read this blog post
# http://www.famvdploeg.com/blog/2013/01/setting-up-an-orientdb-server-on-ubuntu/

$OA=$1

tar -xzvf $OA -C /opt/
ln -s orientdb-* orientdb
chmod 640 /opt/orientdb/config/orientdb-server-config.xml
useradd -d /opt/orientdb -M -r -s /bin/false -U orientdb
chown -R orientdb.orientdb orientdb*

chmod 775 /opt/orientdb/bin
chmod g+x /opt/orientdb/bin/*.sh
cp /opt/orientdb/bin/orientdb.sh /etc/init.d/
sed -i "s|YOUR_ORIENTDB_INSTALLATION_PATH|/opt/orientdb|;s|USER_YOU_WANT_ORIENTDB_RUN_WITH|orientdb|" /etc/init.d/orientdb.sh

