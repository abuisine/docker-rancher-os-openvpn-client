#!/bin/bash
set -eo pipefail

socat TCP4-LISTEN:22,fork,bind=$4,so-bindtodevice=$1 TCP4:${SSH_HOST}:22 &