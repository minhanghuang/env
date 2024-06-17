#!/usr/bin/env bash
#
TMUX_VERSION="3.4"

uNames=`uname -s`
osName=${uNames: 0: 4}

set -e

if [ "$osName" == "Linu" ]
  then
    echo "GNU/Linux"
    sudo apt remove tmux
    sudo apt install -y bison flex
fi

installed_tmux_version=$(tmux -V 2>/dev/null | sed 's/tmux //')

if command -v tmux &> /dev/null; then
  if [ "$installed_tmux_version" == "$TMUX_VERSION" ]; then
    echo "tmux version $TMUX_VERSION is already installed."
    exit 0
  else
    echo "tmux version $installed_tmux_version is installed. Installing version $TMUX_VERSION..."
  fi
fi

wget https://github.com/tmux/tmux/releases/download/${TMUX_VERSION}/tmux-${TMUX_VERSION}.tar.gz

tar -zxvf tmux-${TMUX_VERSION}.tar.gz

cd tmux-${TMUX_VERSION}

./configure && make -j$(nproc) && sudo make install

cd .. && rm -rf tmux-${TMUX_VERSION} tmux-${TMUX_VERSION}.tar.gz

echo "tmux ${TMUX_VERSION} 安装完成！"
