#!/bin/sh
set -e

if [ "$1" = 'bridge' ]; then
  CONFIG_DIR=/etc/bridge
  CONFIG_FILE=$CONFIG_DIR/bridge.cfg
  bridge --migrate-db --config $CONFIG_FILE
  bridge --config $CONFIG_FILE
fi

exec "$@"
