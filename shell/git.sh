#!/usr/bin/env bash

systemctl start dhcpcd
systemctl enable dhcpcd


pacman -S git

git config --global user.name "lay"
git config --global user.email "lay771880416@163.com"

git clone https://github.com/nature-lay/archlinux.git
