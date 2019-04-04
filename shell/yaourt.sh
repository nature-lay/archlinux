#!/usr/bin/env bash
# 安装vim
pacman -S vim
repo = (
  'Server = http://mirrors.163.com/archlinux/$repo/os/$arch'
  'Server = http://mirror.bjtu.edu.cn/archlinux/$repo/os/$arch'
  'Server = http://mirror6.bjtu.edu.cn/archlinux/$repo/os/$arch'
  'Server = ftp://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'
  'Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'
  'Server = ftp://mirror.lzu.edu.cn/archlinux/$repo/os/$arch'
  'Server = http://mirror.lzu.edu.cn/archlinux/$repo/os/$arch'
  'Server = ftp://mirrors.stuhome.net/archlinux/$repo/os/$arch'
  'Server = http://mirrors.stuhome.net/archlinux/$repo/os/$arch'
)
sed -i "8d" /etc/pacman.d/mirrorlist
for item in repo
do
  sed -i "8i$item" /etc/pacman.d/mirrorlist
done
