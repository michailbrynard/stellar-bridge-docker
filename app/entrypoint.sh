#!/bin/sh
set -e

if [ "$1" = 'bridge' ]; then
  /app/templater.sh /app/bridge.cfg.template > /app/bridge.cfg
  bridge --migrate-db
  bridge -config /app/bridge.cfg
fi

exec "$@"
