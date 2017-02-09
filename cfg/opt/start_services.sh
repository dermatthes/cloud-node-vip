#!/bin/bash


### Replace config options

sed -i --follow-symlinks "s|{{ keepalived_priority }}|$KEEPALIVED_PRIORITY|g" /etc/keepalived/keepalived.conf
sed -i --follow-symlinks "s|{{ keepalived_interface }}|$KEEPALIVED_INTERFACE|g" /etc/keepalived/keepalived.conf


## For development only:


CMD="/usr/sbin/keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console --vrrp --release-vips"

if [ $DEVMODE = '1' ]
then
    echo "Devel-mode. Command to run:"
    echo $CMD
    echo ""
    /bin/bash
else
    exec $CMD
fi
