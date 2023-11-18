#!/bin/bash
TIME=`date +%H:%M-%m-%d-%Y`
DIR=/opt/mysql_backup/
BACKUP=/usr/bin/mysqldump
DB=mytestdb

if [ ! -d "$DIR" ];
then	mkdir -p "$DIR"
fi

$BACKUP $DB > "$DIR$TIME-$DB".dump
ls -la $DIR


