#!/bin/bash

###################################
# Note to restore:
# Use gzip -d file.sql.gz will decompress the file in place and the original .gz file will be removed. An alternative is to use zcat file.sql.gz > file.sql.
###################################

NOW=$(date +"%Y-%m-%d_%H-%M-%S")

BackupPath='/srv/backup/db/'		# set your backup folder
BackupFile=dbname.$NOW.sql.gz		# set your backup file name

/usr/bin/mysqldump -u dbuser -pdbpassword dbname | gzip -c -9 | cat > $BackupPath$BackkupFile

# remove backup file that are over 30 days. Use -cmin for files of certain minutes old.
find $BackupPath -name '*.sql.gz' -ctime 60 -exec rm {} \;
