#!/bin/bash


### Replace config options

sed -i --follow-symlinks "s|{{ keepalived_priority }}|$KEEPALIVED_PRIORITY|g" /etc/keepalived/keepalived.conf
sed -i --follow-symlinks "s|{{ keepalived_interface }}|$KEEPALIVED_INTERFACE|g" /etc/keepalived/keepalived.conf


## For development only:
# /bin/bash

/usr/sbin/keepalived -f /etc/keepalived/keepalived.conf --dont-fork --log-console