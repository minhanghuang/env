#!/usr/bin/env bash

set -e

# yarn
sudo apt update
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update
sudo apt install -y \
         build-essential libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping net-tools python2.7-dev \
         supervisor htop ntpdate chrony libtool gdb cgdb clang clang-format llvm tig tree libunwind-dev curl unzip wget \
         zsh git vim sudo python3-pip nginx nodejs npm yarn bear axel silversearcher-ag


sudo npm config set http://registry.npmmirror.com
sudo yarn config set registry http://registry.npmmirror.com
