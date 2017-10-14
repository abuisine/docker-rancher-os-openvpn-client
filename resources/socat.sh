#!/bin/bash
set -eo pipefail

socat TCP4-LISTEN:22,fork,bind=$4 TCP4:${SSH_HOST}:22 &