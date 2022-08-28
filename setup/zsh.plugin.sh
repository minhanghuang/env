#!/bin/bash

git clone git@gitee.com:haha-web/zsh-autosuggestions.git ~/plugins/zsh-autosuggestions
git clone git@gitee.com:haha-web/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git@gitee.com:haha-web/autojump.git ~/plugins/autojump
git clone git@gitee.com:haha-web/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
cd ~/plugins/autojump
python2 install.py 
autoload -U compinit && compinit

