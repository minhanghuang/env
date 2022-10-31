#!/bin/bash

# git
cp .gitconfig ~
cp .gitconfig_trunk ~
cp .gitconfig_github ~
cp .gitconfig_gitee ~

# pip
mkdir -p ~/.pip/
cp pip.conf ~/.pip/

# zsh
cp .zshrc ~

# C++ clang-format
cp .clang-format ~

# cmake-format (pip3 install cmakelang)
cp .cmake-format ~

