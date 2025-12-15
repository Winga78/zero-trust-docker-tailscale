#!/bin/sh
set -e

LOGIN_SERVER="http://172.17.0.1:8081"
HOSTNAME="web-app-test"

tailscaled &
sleep 5

tailscale up \
  --login-server=${LOGIN_SERVER} \
  --hostname=${HOSTNAME} \
  --accept-dns=false \
  --qr

echo "Test Server Web on port 9090 is running..."
exec python3 -m http.server 9090