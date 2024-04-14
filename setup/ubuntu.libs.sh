#!/usr/bin/env bash

set -e

sudo apt update
sudo apt install -y \
         build-essential openssh-server net-tools libtool sudo iputils-ping libgsl-dev ntpdate python2.7-dev python3-pip axel silversearcher-ag lsof \ # base
         pkg-config autoconf automake cmake make g++ gdb cgdb clang clang-format llvm bear \ # C++
         htop chrony tig tree libunwind-dev curl unzip wget \ # tools
         zsh git vim nodejs npm yarn ripgrep universal-ctags global neofetch cppman \ # plugin
         supervisor nginx \ # proxy

# ripgrep: 全文搜索工具
# universal-ctags global: 源代码导航和标签生成的工具
# neofetch: 查看系统信息
# cppman: 查看C++ 98/11/14/17/20 manual pages
