#!/usr/bin/env bash

uNames=`uname -s`
osName=${uNames: 0: 4}

set -e

if [ "$osName" == "Darw" ] # macOS
  then
    echo "install lazygit plugin(macOS)"
    brew install lazygit
elif [ "$osName" == "Linu" ] # Linux
  then
    echo "install lazygit plugin(Ubuntu)"
    LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
    TEMP_DIR=$(mktemp -d)
    curl -Lo "${TEMP_DIR}/lazygit.tar.gz" "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
    tar xf "${TEMP_DIR}/lazygit.tar.gz" -C "${TEMP_DIR}"
    sudo install ${TEMP_DIR}/lazygit /usr/local/bin
else
  echo "unknown os :" $osName
  exit 8
fi
