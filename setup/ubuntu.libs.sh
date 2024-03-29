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
         zsh git vim sudo python3-pip nginx nodejs npm yarn bear axel silversearcher-ag lsof ripgrep universal-ctags global neofetch \
         cppman

# ripgrep: 全文搜索工具
# universal-ctags global: 源代码导航和标签生成的工具
# neofetch: 查看系统信息
# cppman: 查看C++ 98/11/14/17/20 manual pages

sudo npm config set http://registry.npmmirror.com
sudo yarn config set registry http://registry.npmmirror.com
