#!/usr/bin/env bash
# 安装fcitx和搜狗输入法

pacman -S fcitx fcitx-configtool

yaourt -Sy fcitx-sogoupinyin
if [ ! -f "~/.xprofile" ]
then
  touch ~/.xprofile
else
  rm -r ~/.xprofile
fi
if [ -f "/home/.xprofile" ]
then
  rm -r /home/.xprofile
fi

echo "export GTK_IM_MODULE=fcitx" >> ~/.xprofile
echo "export QT_IM_MODULE=fcitx" >> ~/.xprofile
echo 'export XMODIFIERS="@im=fcitx"' >> ~/.xprofile

cp ~/.xprofile  /home/
