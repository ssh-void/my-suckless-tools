sudo xbps-install -S && sudo xbps-install -u xbps && sudo xbps-install -Syu
sudo xbps-install -Suyf $(cat pkglist.txt)

USERNAME=$(logname)

sudo chsh -s /bin/bash void
sudo chsh -s /bin/bash root

sudo ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
sudo ln -s /etc/sv/dbus/ /var/service/
sudo ln -s /etc/sv/spice-vdagentd/ /var/service/

sudo cp -rf ~/my-suckless-tools/xorg.conf.d/ /etc/X11/
cd ~/my-suckless-tools/  && cp -rf .bashrc .profile .bash_profile .tmux.conf .xinitrc .aliases  $HOME/

cp -rf ~/my-suckless-tools/.local/ ~/
cp -rf ~/my-suckless-tools/.fonts/ ~/

sudo sed -i 's/^GRUB_TIMEOUT=.*/GRUB_TIMEOUT=0/' /etc/default/grub
sudo sed -i "s/GETTY_ARGS=\"--noclear\"/GETTY_ARGS=\"--noclear --autologin $USERNAME\"/" \
	/etc/runit/runsvdir/current/agetty-tty1/conf
sudo grub-mkconfig -o /boot/grub/grub.cfg
sudo update-grub

sudo xbps-reconfigure -fa && fc-cache -fv && sudo xbps-reconfigure -f fontconfig
sudo rm /var/service/agetty-tty{3,4,5,6}
cd  ~/my-suckless-tools/src/ && bash src.sh

echo "permit nopass $USERNAME as root" | sudo tee /etc/doas.conf > /dev/null

# Reboot system
sudo reboot
