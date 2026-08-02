#!/usr/bin/env bash
set -e

echo
echo "stopping postgres"

PGDATA="$(mise where postgres)/data"

pg_ctl -D "$PGDATA" -m fast stop

echo
echo "   postgres stopped"
echo
echo "   press prefix+u to restart the server"
