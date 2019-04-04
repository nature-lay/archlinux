#!/usr/bin/env bash
# 安装vim
pacman -S vim reflector

cp /etc/pacman.d/mirrorlist  /etc/pacman.d/mirrorlist.backup
# 按速度重排
reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist
