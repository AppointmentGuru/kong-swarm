#!/usr/local/bin/dumb-init /bin/bash
set -e

# Disabling nginx daemon mode
export KONG_NGINX_DAEMON="off"

IPADDR=$(hostname -i)

echo "Starting Kong..."
export KONG_CLUSTER_LISTEN="${IPADDR}:7946"

exec "$@"
