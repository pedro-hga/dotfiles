#!/usr/bin/env bash
if [ "$(dunstctl is-paused)" = "true" ]; then
  echo -e "\uf478"
else
  echo -e "\uf49a"
fi
