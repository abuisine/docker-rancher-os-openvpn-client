#!/bin/bash
set -eo pipefail

socat TCP4-LISTEN:22,fork,so-bindtodevice=$1 TCP4:ssh:22 &