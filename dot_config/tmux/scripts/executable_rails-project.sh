#!/usr/bin/env bash

tmux rename-session -t 0 main || true

tmux rename-window -t main:0 server || true

tmux new-window -t main:1 -n code || true
tmux new-window -t main:2 -n console || true
tmux new-window -t main:3 -n references || true
tmux new-window -t main:4 -n git || true
tmux new-window -t main:10 -n postgres || true

tmux select-window -t main:0
