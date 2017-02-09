#!/bin/bash


### Replace config options

sed -i --follow-symlinks "s|{{ keepalived_priority }}|$KEEPALIVED_PRIORITY|g" /etc/keepalived/keepalived.conf


/usr/local/sbin/keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console