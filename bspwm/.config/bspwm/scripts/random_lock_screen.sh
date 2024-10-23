#!/bin/bash

# 定义壁纸目录
WALLPAPER_DIR="$HOME/Pictures/wallpapers"

# 检查目录是否存在
if [ ! -d "$WALLPAPER_DIR" ]; then
    echo "壁纸目录不存在：$WALLPAPER_DIR"
    exit 1
fi

# 获取壁纸列表
WALLPAPERS=$(find "$WALLPAPER_DIR" -type f \( -iname '*.jpg' -o -iname '*.png' \))

# 检查是否找到壁纸
if [ -z "$WALLPAPERS" ]; then
    echo "未在目录中找到任何壁纸文件。"
    exit 1
fi

# 随机选择一张壁纸
SELECTED_WALLPAPER=$(echo "$WALLPAPERS" | shuf -n 1)

# 更新 betterlockscreen 并锁屏
betterlockscreen -u "$SELECTED_WALLPAPER" && betterlockscreen -l dimblur

