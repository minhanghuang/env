#!/bin/sh

set -e

# on my zsh plugins
git clone https://gitee.com/Coxhuang/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://gitee.com/Coxhuang/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
sed 's/plugins=(git)/plugins=(git zsh-syntax-highlighting zsh-autosuggestions)/g' .zshrc > .zshrc.bak
mv .zshrc.bak .zshrc

exec "$@"