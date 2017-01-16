#!/bin/sh
set -e

if [ "$1" = 'bridge' ]; then
  /app/templater.sh /app/config_bridge.toml.template > /app/config_bridge.toml
  bridge --migrate-db
  bridge
fi

exec "$@"
