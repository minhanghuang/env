#!/usr/bin/env bash

git clone https://gitee.com/haha-web/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://gitee.com/haha-web/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://gitee.com/haha-web/autojump.git ~/.oh-my-zsh/custom/plugins/autojump
git clone https://gitee.com/haha-web/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
cd ~/.oh-my-zsh/custom/plugins/autojump
python2 install.py
autoload -U compinit && compinit

