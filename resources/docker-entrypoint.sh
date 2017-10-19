#!/bin/bash
set -eo pipefail

AUTH_FILE=/tmp/auth

echo $HOSTNAME > $AUTH_FILE
echo $PASSWORD >> $AUTH_FILE

exec openvpn $@