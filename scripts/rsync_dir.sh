#! /bin/bash
FROM=/tmp/dir1
TO=server:/tmp/dir1
LOG=/var/log/cron.log

echo "====================================================" >> $LOG
echo $(date) >> $LOG
echo "====================================================" >> $LOG
#rsync -avhz --delete $FROM $TO >> $LOG
rsync -avhz $FROM $TO >> $LOG
echo "                                                    " >> $LOG
