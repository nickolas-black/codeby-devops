#!/bin/bash
STORE=10.220.91.147
RSYNC=/usr/bin/rsync
DIR=/opt/mysql_backup/
DIR_STORE=/opt/store/mysql/
TIME=`date +%H:%M-%m-%d-%Y`


$RSYNC -aOvz "$DIR" "$STORE":"$DIR_STORE"
echo "Files send to store $TIME"

