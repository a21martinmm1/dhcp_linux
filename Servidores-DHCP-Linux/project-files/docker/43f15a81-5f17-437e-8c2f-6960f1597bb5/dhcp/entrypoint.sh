#!/bin/bash

RUTA=$(dirname "$(realpath "$0")") 

cp "$RUTA/dhcp4.json" /etc/kea/kea-dhcp4.conf

/etc/init.d/kea-dhcp4-server restart