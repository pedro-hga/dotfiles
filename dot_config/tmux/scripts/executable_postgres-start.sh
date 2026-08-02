#!/usr/bin/env bash
set -e

echo
echo "starting postgres"

PGDATA="$(mise where postgres)/data"
LOGFILE="$PGDATA/server.log"

pg_ctl -D "$PGDATA" -m fast stop || true
pg_ctl -D "$PGDATA" -w -l "$LOGFILE" start

echo
echo "   postgres started"
echo
echo "   press prefix+y to restart the server"
echo
echo "   press prefix+Y to stop the server"
