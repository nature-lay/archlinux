#!/usr/bin/env bash
# 安装vim
pacman -S vim

repo[0]='Server = http://mirrors.163.com/archlinux/$repo/os/$arch'
repo[1]='Server = http://mirror.bjtu.edu.cn/archlinux/$repo/os/$arch'
repo[2]='Server = http://mirror6.bjtu.edu.cn/archlinux/$repo/os/$arch'
repo[3]='Server = ftp://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'
repo[4]='Server = http://mirrors.ustc.edu.cn/archlinux/$repo/os/$arch'
repo[5]='Server = ftp://mirror.lzu.edu.cn/archlinux/$repo/os/$arch'
repo[6]='Server = http://mirror.lzu.edu.cn/archlinux/$repo/os/$arch'
repo[7]='Server = ftp://mirrors.stuhome.net/archlinux/$repo/os/$arch'
repo[8]='Server = http://mirrors.stuhome.net/archlinux/$repo/os/$arch'

sed -i "8d" /etc/pacman.d/mirrorlist
for item in ${repo[@]}
do
  sed -i "8i$item" /etc/pacman.d/mirrorlist
done
