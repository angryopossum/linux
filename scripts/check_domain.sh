#!/bin/bash

DOMAINS="$1"

current_epoch=`date '+%s'`
for dm in $DOMAINS
do
  expiry_date=`whois $dm | egrep -i "Expiration Date:|Expires on"| head -1 | awk '{print $NF}'`
  echo -n " $dm - Expires on $expiry_date "
  expiry_epoch=`date --date="$expiry_date" '+%s'`
  epoch_diff=`expr $expiry_epoch - $current_epoch`
  days=`expr $epoch_diff / 86400`
  echo " $days days remaining. "
done
