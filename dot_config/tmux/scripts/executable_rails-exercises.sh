#!/usr/bin/env bash

tmux rename-session -t 0 main || true

tmux rename-window -t main:0 code || true

tmux new-window -t main:1 -n console || true
tmux new-window -t main:2 -n tests || true

tmux select-window -t main:0
