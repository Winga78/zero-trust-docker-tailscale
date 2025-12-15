#!/bin/sh
set -e

LOGIN_SERVER="http://172.17.0.1:8081"
HOSTNAME="db-server-test"

tailscaled &
sleep 5

tailscale up \
  --login-server=${LOGIN_SERVER} \
  --hostname=${HOSTNAME} \
  --accept-dns=false \
  --qr

exec socat TCP-LISTEN:3333,fork EXEC:'echo "DB Test response on port 3333"'