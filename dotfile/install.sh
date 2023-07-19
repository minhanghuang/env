#!/usr/bin/env bash

# git
cp .gitconfig ~
cp .gitconfig_trunk ~
cp .gitconfig_github ~
cp .gitconfig_gitee ~

# pip
mkdir -p ~/.pip/
cp -f pip.conf ~/.pip/

# zsh
cp .zshrc ~
cp .zsh_history ~

# C++ clang-format
cp .clang-format ~

# cmake-format (pip3 install cmakelang)
cp .cmake-format ~

# HHKB
mkdir -p ~/.config/karabiner/assets/complex_modifications
cp hhkb.json ~/.config/karabiner/assets/complex_modifications

