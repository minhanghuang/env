#!/bin/bash

# git alias
cp .gitconfig ~

# pip
mkdir -p ~/.pip/
cp pip.conf ~/.pip/

# zsh
cp .zshrc ~

# C++ clang-format
cp .clang-format ~

# cmake-format (pip3 install cmakelang)
cp .cmake-format ~

