#!/bin/bash
set -eo pipefail

SSH_HOST=172.17.0.1

socat TCP4-LISTEN:22,fork,so-bindtodevice=$1 TCP4:$SSH_HOST:22 &