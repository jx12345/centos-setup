mysqldump ffc | gzip > /home/user/backups/ffc.sql.gz && cp /home/user/backups/ffc.sql.gz "/home/user/backups/archive/$(date +\%Y-\%m-\%d_\%H\%m).sql.gz"
