#!/bin/bash

echo -e "\n \e[92m Update dependencies\e[0m"
sudo pacman -Syu --noconfirm

echo -e "\n \e[92m Configure locale\e[0m"
sudo localectl set-locale LANG="en_US.UTF-8"
sudo locale-gen

echo -e "\n \e[92m NTP\e[0m"
sudo pacman -S ntp --noconfirm
sudo systemctl enable ntpd
sudo systemctl start ntpd
timedatectl set-ntp 1

echo -e "\n \e[92m Install git\e[0m"
sudo pacman -S git --noconfirm

echo -e "\n \e[92m Install portaudio\e[0m"
sudo pacman -S portaudio --noconfirm

echo -e "\n \e[92m Install rsync\e[0m"
sudo pacman -S rsync --noconfirm

echo -e "\n \e[92m Install gnome keyring rsync\e[0m"
sudo pacman -S gnome-keyring --noconfirm

echo -e "\n \e[92m Install gnome keyring rsync\e[0m"
sudo pacman -S network-manager-applet --noconfirm

echo -e "\n \e[92m Install pcmanfm\e[0m"
sudo pacman -S pcmanfm --noconfirm

echo -e "\n \e[92m Install pcmanfm\e[0m"
sudo pacman -S powerline powerline-fonts --noconfirm

echo -e "\n \e[92m Install gnome terminal\e[0m"
sudo pacman -S gnome-terminal --noconfirm

echo -e "\n \e[92m Install volumeicon\e[0m"
sudo pacman -S volumeicon --noconfirm

echo -e "\n \e[92m Install vim\e[0m"
sudo pacman -S vim --noconfirm

echo -e "\n \e[92m Install gvim\e[0m"
sudo pacman -S gvim --noconfirm

echo -e "\n \e[92m Install tmux\e[0m"
sudo pacman -S tmux --noconfirm

echo -e "\n \e[92m Install docker\e[0m"
sudo pacman -S docker --noconfirm

echo -e "\n \e[92m Install openssh\e[0m"
sudo pacman -S openssh --noconfirm

echo -e "\n \e[92m Install compton\e[0m"
sudo pacman -S compton --noconfirm

echo -e "\n \e[92m Install chromium\e[0m"
sudo pacman -S chromium --noconfirm

echo -e "\n \e[92m Install rofi\e[0m"
sudo pacman -S rofi --noconfirm

echo -e "\n \e[92m Install pantheon terminal\e[0m"
sudo pacman -S pantheon-terminal --noconfirm

echo -e "\n \e[92m Install Yakuake\e[0m"
sudo pacman -S yakuake --noconfirm

echo -e "\n \e[92m Install pulseaudio\e[0m"
sudo pacman -S pulseaudio --noconfirm

# Configure docker
echo -e "\n \e[92m Enable docker service\e[0m"
sudo gpasswd -a $USER docker
sudo systemctl enable docker
sudo systemctl start docker

# Install yaourt

echo -e "\n \e[92m Install yaourt\e[0m"
sudo pacman -S --needed base-devel git wget yajl --noconfirm
cd
git clone https://aur.archlinux.org/package-query.git
cd package-query/
makepkg -si --noconfirm
cd ..
git clone https://aur.archlinux.org/yaourt.git
cd yaourt/
makepkg -si --noconfirm
cd ..
sudo rm -dR yaourt/ package-query/
yaourt -Syu --noconfirm

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash


# Install yaourt dependencies
echo -e "\n \e[92m Install spotify\e[0m"
yaourt -S spotify --noconfirm

echo -e "\n \e[92m Install google music desktop\e[0m"
yaourt -S gpmdp --noconfirm

echo -e "\n \e[92m Install rcm\e[0m"
yaourt -S rcm --noconfirm

echo -e "\n \e[92m Install rambox\e[0m"
yaourt -S rambox-bin --noconfirm

echo -e "\n \e[92m Install polybar \e[0m"
yaourt -S polybar --noconfirm

echo -e "\n \e[92m Install shutter\e[0m"
yaourt -S shutter --noconfirm

echo -e "\n \e[92m Install libspotify\e[0m"
yaourt -S libspotify --noconfirm

echo -e "\n \e[92m Install sconsify\e[0m"
yaourt -S sconsify --noconfirm

# Install vim spf13
echo -e "\n \e[92m Install vim\e[0m"
curl http://j.mp/spf13-vim3 -L -o - | sh

# Get config
echo -e "\n \e[92m Install dotfiles\e[0m"
git clone https://github.com/richartl/dotfiles.git ~/.dotfiles
rcup

echo -e "\n \e[92m Install python 2.7\e[0m"
sudo pacman -S python2 --noconfirm
sudo pacman -S python2-pip --noconfirm
ln -s /usr/bin/python2 ~/.bin/python
ln -s /usr/bin/python2-config ~/.bin/python-config
ln -s /usr/bin/pip2 ~/.bin/pip


echo -e "\n \e[92m Install pomo\e[0m"
cd /usr/bin/
sudo curl -L -o pomo https://github.com/kevinschoon/pomo/releases/download/0.5.0/pomo-0.5.0-linux-amd64
sudo chmod +x pomo


echo -e "\n \e[92m Install ssh\e[0m"
git clone https://ricardo-pcan@bitbucket.org/ricardo-pcan/rippersh.git ~/.ssh
