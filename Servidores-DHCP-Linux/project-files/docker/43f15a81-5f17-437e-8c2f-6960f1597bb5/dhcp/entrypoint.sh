#!/bin/bash

RUTA=$(dirname "$(realpath "$0")") 

cp "$RUTA/dhcp4.json" /etc/kea/kea-dhcp4.conf

cp "$RUTA/dhcpddns.json" /etc/kea/kea-dhcp-ddns.conf

/etc/init.d/kea-dhcp4-server restart
kea-dhcp-ddns -c /etc/kea/kea-dhcp-ddns.conf