#!/usr/bin/env bash

set -e

sudo apt update

# install base
sudo apt install -y \
  build-essential openssh-server net-tools libtool sudo iputils-ping libgsl-dev ntpdate \
  python3-pip python3-venv axel silversearcher-ag lsof unzip nfs-common libevent-dev

# install C++ dependence
sudo apt install -y \
  pkg-config autoconf automake cmake make g++ gdb cgdb clang clang-format ninja-build \
  llvm bear valgrind

# install tools
sudo apt install -y \
  htop chrony tig tree libunwind-dev curl unzip wget baobab xclip

# install pulgin
sudo apt install -y \
  zsh git vim nodejs npm yarn ripgrep universal-ctags global neofetch cppman

# install porxy
sudo apt install -y supervisor nginx

# install language
sudo apt install -y language-pack-zh-hans

# nfs-common: nfs目录挂载
# baobab: 查看磁盘占用GUI
# ripgrep: 全文搜索工具
# universal-ctags global: 源代码导航和标签生成的工具
# neofetch: 查看系统信息
# cppman: 查看C++ 98/11/14/17/20 manual pages
# valgrind: 查看C++程序内存泄露工具
# xclip: 剪切板工具
