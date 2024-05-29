复制代码#!/bin/sh

# 获取当前连接的显示器信息
DISPLAY1=$(xrandr --query | grep " connected" | awk 'NR==1{print $1}')
DISPLAY2=$(xrandr --query | grep " connected" | awk 'NR==2{print $1}')

# 根据显示器名称设置不同的DPI
if [ "$DISPLAY1" = "HDMI-0" ]; then
    xrdb -merge << EOF
    Xft.dpi: 120
EOF
fi

if [ "$DISPLAY2" = "DP-4" ]; then
    xrdb -merge << EOF
    Xft.dpi: 96
EOF
fi
