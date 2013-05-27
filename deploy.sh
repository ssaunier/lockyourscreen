#!/bin/sh
cd `dirname $BASH_SOURCE`
HOST="ftp.lockyourscreen.com"
USER=lockyour
PASSWORD=`security find-generic-password -l "$HOST" -g 2>&1 | grep "password" | cut -d \\" -f 2`
echo "cd www\nm\nmput *" | ftp -i ftp://$USER:$PASSWORD@$HOST