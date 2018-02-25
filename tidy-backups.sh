find /home/rx/backups/archive -maxdepth 1 -name "*_23*" -mtime +7 -exec mv {} older-than-one-week/ \;
find /home/rx/backups/archive -maxdepth 1 -mtime +7 -delete
