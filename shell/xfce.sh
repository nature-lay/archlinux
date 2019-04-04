#!/usr/bin/env bash

pacman -S xfce4 xorg-server
cp /etc/X11/xinit/xinitrc ~/.xinitrc
echo "exec startxfce4" >> ~/.xinitrc

useradd -m -g users -G wheel -s /bin/bash lay
passwd lay

pacman -S sudo

chmod +w /etc/sudoers

sed -i '80ilay ALL=(ALL) ALL' /etc/sudoers
sed -i '81d' /etc/sudoers

sed -i '82i%wheel ALL=(ALL) ALL' /etc/sudoers

sed -i '83d' /etc/sudoers

chmod 440 /etc/sudoers

pacman -S lightdm-gtk-greeter lightdm

sed -i "108igreeter-session=lightdm-gtk-greeter" /etc/lightdm/lightdm.conf
sed -i "109d" /etc/lightdm/lightdm.conf

systemctl enable lightdm.service
systemctl start lightdm.service
