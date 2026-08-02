#!/bin/bash

LC_TIME=pt_BR.UTF-8 date '+%a %d.%m.%Y'

case $BLOCK_BUTTON in
1)
  gsimplecal &
  ;;
esac
