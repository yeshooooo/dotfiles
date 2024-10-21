#!/bin/bash
while true; do
    # 遇到文件夹的时候跳过文件夹
    wallpaper=$(find "$HOME/Pictures/wallpapers" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)
    if [ -n "$wallpaper" ]; then
        feh --bg-fill "$wallpaper"
    fi
    sleep 2m
done
