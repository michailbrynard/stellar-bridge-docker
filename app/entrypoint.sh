#!/bin/sh
set -e

if [ "$1" = 'bridge' ]; then
  /app/templater.sh /app/bridge.cfg.template > /app/bridge.cfg
  # NOTE: unable to specify bridge.cfg
  # https://github.com/stellar/bridge-server/issues/54
  bridge --migrate-db
  bridge
fi

exec "$@"
