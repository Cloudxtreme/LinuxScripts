#!/bin/bash
NOW=$(date +"%Y-%m-%d_%H-%M-%S")

BackupFile=domain.$NOW.tar.gz       # replace domain with actual domain name
BackupPath='/srv/backup/site/'      # define where files can be backed up to.

pushd /srv/sites/domain/            # replace domain with actual domain name
tar cvfz $BackupPath$BackupFile www # replace www with the actual folder name

# remove backup files that are over 30 days old. Or use -cmin to specify certain minutes old. 
find $BackupPath -name '*.gz' -ctime 30 -exec rm {} \;

popd
