sudo xbps-install -S && sudo xbps-install -u xbps && sudo xbps-install -Syu
sudo xbps-install -Suyf $(cat pkglist.txt)

sudo chsh -s /bin/bash void
sudo chsh -s /bin/bash root

sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo ln -s /etc/sv/dbus/ /var/service/
sudo ln -s /etc/sv/spice-vdagentd/ /var/service/

sudo cp -rf ~/my-suckless-tools/xorg.conf.d/ /etc/X11/
cd ~/my-suckless-tools/ 
cp -rf .bashrc .profile .bash_profile .tmux.conf .xinitrc .aliases ~/
cp -rf ~/my-suckless-tools/.local/ ~/
cp -rf ~/my-suckless-tools/.fonts/ ~/

sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/' /etc/default/grub
sudo sed -i 's|^GRUB_CMDLINE_LINUX_DEFAULT=".*"|GRUB_CMDLINE_LINUX_DEFAULT="loglevel=4"|' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo update-grub

sudo xbps-reconfigure -fa && fc-cache -fv && sudo xbps-reconfigure -f fontconfig
sudo rm /var/service/agetty-tty{3,4,5,6}
cd  ~/my-suckless-tools/src/ && bash src.sh

echo "permit nopass $(whoami) as root" | sudo tee /etc/doas.conf > /dev/null
