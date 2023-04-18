#!/usr/bin/env bash

THEME="lofi"

killall polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

CONFIG_DIR=$(dirname $0)/themes/$THEME/config.ini
# 原始
#polybar main -c $CONFIG_DIR &

#
# https://github.com/polybar/polybar/issues/763
#
# 同时不要忘了在bar中设置monitor参数

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload  main -c $CONFIG_DIR &
  done
else

  polybar --reload main -c $CONFIG_DIR &
fi
