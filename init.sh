#!/bin/bash

# Install fontconfig
echo "Install fontconfig"
sudo apt install fontconfig -y &>/dev/null

# Git
echo "Install git"
sudo apt install git -y &>/dev/null

# Zsh
echo "Install zsh"
sudo apt install zsh -y &>/dev/null
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
sudo chsh -s /bin/zsh `whoami`

# GVim
echo "Install GVim"
sudo apt install vim-gtk vim-youcompleteme -y &>/dev/null
sudo apt install exuberant-ctags -y &>/dev/null

# Python pip
echo "Install pip"
sudo apt install python-dev python3-dev -y &>/dev/null
sudo apt install python-pip python3-pip -y &>/dev/null
sudo pip install --upgrade pip &>/dev/null
sudo pip3 install --upgrade pip &>/dev/null

# NeoVim
echo "Install NeoVim"
sudo apt install xsel ycmd
sudo pip3 install yapf neovim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60

# Virtualenv and Virtualenvwrapper
echo "Install virtualenv and virtualenvwrapper"
sudo pip install virtualenv virtualenvwrapper &>/dev/null
sudo pip3 install virtualenv virtualenvwrapper &>/dev/null

# Conky
echo "Install conky"
sudo apt install conky-all curl lm-sensors hddtemp
sudo sensors-detect

# Themes
echo "Install Themes"
sudo add-apt-repository ppa:snwh/pulp
sudo add-apt-repository ppa:numix/ppa
sudo add-apt-repository ppa:tista/adapta
sudo apt update
sudo apt install paper-gtk-theme paper-icon-theme paper-cursor-theme numix-gtk-theme numix-icon-theme numix-icon-theme-circle adapta-gtk-theme unity-tweak-tool
