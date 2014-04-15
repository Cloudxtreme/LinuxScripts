#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H-%M-%S")

BackupPath='/srv/backup/db/'		# set your backup folder
BackupFile=dbname.$NOW.sql.gz		# set your backup file name

/usr/bin/mysqldump -u dbuser -pdbpassword dbname | gzip -c -9 | cat > $BackupPath$BackkupFile

# remove backup file that are over 30 days. Use -cmin for files of certain minutes old.
find $BackupPath -name '*.sql.gz' -ctime 60 -exec rm {} \;
