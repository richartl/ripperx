#!/bin/bash

echo -e "\n \e[92m Update dependencies\e[0m"
echo -ne
sudo pacman -Syu --noconfirm

echo -e "\n \e[92m Install git\e[0m"
sudo pacman -S git --noconfirm

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


# Install yaourt dependencies
echo -e "\n \e[92m Install spotify\e[0m"
yaourt -S spotify --noconfirm

echo -e "\n \e[92m Install google music desktop\e[0m"
yaourt -S gpmdp --noconfirm

echo -e "\n \e[92m Install rcm\e[0m"
yaourt -S rcm --noconfirm

echo -e "\n \e[92m Install franz\e[0m"
yaourt -S franz-bin --noconfirm

echo -e "\n \e[92m Install \e[0m"
yaourt -S polybar --noconfirm

# Install vim spf13
curl http://j.mp/spf13-vim3 -L -o - | sh

# Get config
git clone https://github.com/richartl/dotfiles.git ~/.dotfiles


