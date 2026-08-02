#!/usr/bin/env bash

set -e

echo "Starting Bridgetown..."

# send interrupt if something is running
tmux send-keys -t main:server C-c

# small delay to let process stop
sleep 1

tmux send-keys -t main:server "clear" C-m
tmux send-keys -t main:server "bin/bridgetown start" C-m
