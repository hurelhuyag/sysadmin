#!/bin/bash
# hdd bench script

echo 'hdparm'
hdparm -Tt /dev/sda

echo 'dd write'
dd if=/dev/zero of=/tmp/dd_test_file bs=512 count=1000 oflag=dsync

echo 'dd read'
echo 3 | sudo tee /proc/sys/vm/drop_caches
time time dd if=/tmp/dd_test_file of=/dev/null bs=8k

