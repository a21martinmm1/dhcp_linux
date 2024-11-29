#!/bin/bash

RUTA=$(dirname "$(realpath "$0")") 

cp "$RUTA/named.conf.local" /etc/bind/named.conf.local
cp "$RUTA/named.conf.options" /etc/bind/named.conf.options
cp "$RUTA/db.lannister.lan" /var/cache/bind/db.lannister.lan
cp "$RUTA/db.stark.lan" /var/cache/bind/db.stark.lan
cp "$RUTA/db.targaryen.lan" /var/cache/bind/db.targaryen.lan
cp "$RUTA/db.10.168.192" /var/cache/bind/db.10.168.192
cp "$RUTA/db.11.168.192" /var/cache/bind/db.11.168.192
cp "$RUTA/db.57.168.192" /var/cache/bind/db.57.168.192
chown bind:bind /var/cache/bind/*

rsyslogd

/etc/init.d/named restart

# tail -f /var/log/syslog