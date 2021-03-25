#!/bin/bash
# Script para comprimir respaldo de basde de dato de desarrollo
# y produccion local

BASEDIR="/mnt/backup_jira/Oracle"
SUBDIRS="Oracle240Bakups Oracle26Backups"

cd $BASEDIR

for folder in $SUBDIRS
do
 tar -czf $folder.tar.gz $folder
 rm -rf $folder/backups/*
done


