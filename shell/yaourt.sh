#!/usr/bin/env bash
# 安装vim
pacman -S vim reflector

cp /etc/pacman.d/mirrorlist  /etc/pacman.d/mirrorlist.backup
# 按速度重排
reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist


# 安装AUR
sed -i "93i[multilib]" /etc/pacman.conf
sed -i "94d" /etc/pacman.conf
sed -i "94iInclude = /etc/pacman.d/mirrorlist" /etc/pacman.conf
sed -i "95d" /etc/pacman.conf


sed -i "98i[archlinuxcn]" /etc/pacman.conf
sed -i "99d" /etc/pacman.conf
sed -i "99iSigLevel = Optional TrustAll" /etc/pacman.conf
sed -i "100d" /etc/pacman.conf
sed -i "104iServer= https://mirrors.ustc.edu.cn/archlinuxcn/\$arch" /etc/pacman.conf
sed -i "105d" /etc/pacman.conf

pacman -Sy
# 同步并安装yaourt
pacman -Syu yaourt
