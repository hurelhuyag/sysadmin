#!/bin/bash

declare -a SERVERS=('218.100.84.82', '202.180.219.174');

DIR="/home/hurlee/Downloads/";

while true; 
do
  change=$(inotifywait -e close_write,moved_to,create .)
  change=${change#./ * }
  if [ "$change" = "myfile.py" ]; 
  then 
    ./myfile.py; 
  fi
done


copy_to_server(){
  scp $2 keep@$1:$2
}
