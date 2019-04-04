#!/usr/bin/env bash
# 安装vim
pacman -S vim reflector

cp /etc/pacman.d/mirrorlist  /etc/pacman.d/mirrorlist.backup
# 按速度重排
reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist


# 安装AUR
echo "[multilib]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist"
echo "[archlinuxcn]" >> /etc/pacman.conf
echo "SigLevel = Optional TrustAll" >> /etc/pacman.conf
echo "Server= https://mirrors.ustc.edu.cn/archlinuxcn/\$arch" >> /etc/pacman.conf

pacman -Sy
# 同步并安装yaourt
pacman -Syu yaourt
