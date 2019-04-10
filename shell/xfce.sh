#安装xfce桌面
cp ./config/mirrorlist /etc/pacman.d/mirrorlist
pacman -Sy
cp ./config/locale.gen /etc/locale.gen
cp ./config/locale.conf /etc/locale.conf
cp ./config/.xprofile ~/.xprofile
pacman -S xfce4 xorg-server
cp ./config/.xinitrc ~/.xinitrc

useradd -m -g users -G wheel -s /bin/bash lay
passwd lay

pacman -S sudo

cp ./config/sudoers /etc/sudoers

pacman -S lightdm-gtk-greeter lightdm

cp ./config/lightdm.conf /etc/lightdm/lightdm.conf
systemctl enable lightdm.service
systemctl start lightdm.service

