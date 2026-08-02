#!/usr/bin/env bash

set -e

tmux send-keys -t main:server C-c

# allow clean shutdown
sleep 2

tmux send-keys -t main:server "bin/dev" C-m
