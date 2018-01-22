#!/bin/bash
set -eo pipefail

AUTH_FILE=/tmp/auth

echo $HOSTNAME > $AUTH_FILE
echo $PASSWORD >> $AUTH_FILE

wget -P /etc/ssl/certs/ "${CA_URL}"

exec openvpn $@