#!/usr/bin/env bash
set -e

[[ -f $DEVPI_SERVERDIR/.serverversion ]] || initialize=yes

# Properly shutdown devpi server
shutdown() {
    devpi-server --stop  # Kill server
    kill -SIGTERM $TAIL_PID  # Kill tail
}

trap shutdown SIGTERM SIGINT

# Initialize data
if [[ $initialize = yes ]]; then
  devpi-server --init
fi

devpi-server --start --host 0.0.0.0 --port $DEVPI_PORT --outside-url "$DEVPI_OUTSIDE_URL"

DEVPI_LOGS=$DEVPI_SERVERDIR/.xproc/devpi-server/xprocess.log

devpi use http://localhost:$DEVPI_PORT
if [[ $initialize = yes ]]; then
  # Set root password
  devpi login root --password=''
  devpi user -m root password="${DEVPI_PASSWORD}"
fi

tail -f $DEVPI_LOGS &
TAIL_PID=$!

wait $TAIL_PID
wait $DEVPI_PID
EXIT_STATUS=$?
