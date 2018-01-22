#!/bin/bash
set -eo pipefail

AUTH_FILE=/tmp/auth

echo $HOSTNAME > $AUTH_FILE
echo $PASSWORD >> $AUTH_FILE

echo -e "${CA_CERT}" > /etc/ssl/certs/ca.crt

exec openvpn $@