# 安装浏览器
pacman -S chromium

# 安装fcitx
pacman -S fcitx fcitx-configtool fcitx-qt4 fcitx-qt5

# 安装vim
pacman -S gvim

# 安装深度icon
pacman -S deepin-icon-theme

# 安装yaourt
cp ./config/pacman.conf /etc/pacman.conf

pacman -Sy
pacman -Syu yaourt


#安装sogoupinyin
yaourt -S fcitx-sogoupinyin

# 安装网易云音乐
pacman -S netease-cloud-music

# 安装图片工具
pacman -S xfce4-screenshooter
# 设置声卡
pacman -S alsa-utils
amixer sset Master unmute
amixer sset Speaker unmute
amixer sset Headphone unmute

gpasswd -a lay audio
# 安装图片管理软件
pacman -S shotwell

# 安装wps
pacman -S wps-office
# 安装photoshop
pacman -S gimp

# 安装xfce工具

pacman -S xfce4-whiskermenu-plugin

# 安装网络链接程序
pacman -S wicd wicd-gtk
systemctl stop netcfg
systemctl stop dhcpcd@.service
systemctl stop NetworkManger.service

systemctl disable netcfg
systemctl disable dhcpcd@.service
systemctl disable NetworkManager.service

systemctl enable wicd.service
gpasswd -a lay users
systemctl start wicd
