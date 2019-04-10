# 安装浏览器
pacman -S chromium

# 安装fcitx
pacman -S fcitx fcitx-configtool fcitx-qt4 fcitx-qt5

# 安装vim
pacman -S gvim

# 安装yaourt
cp ./config/pacman.conf /etc/pacman.conf

pacman -Sy
pacman -Syu yaourt


#安装sogoupinyin
yaourt -S fcitx-sogoupinyin


