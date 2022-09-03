#!/bin/bash

git clone git@gitee.com:haha-web/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone git@gitee.com:haha-web/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone git@gitee.com:haha-web/autojump.git ~/.oh-my-zsh/custom/plugins/autojump
git clone git@gitee.com:haha-web/zsh-completions.git ~/.oh-my-zsh/custom/plugins/zsh-completions
cd ~/.oh-my-zsh/custom/plugins/autojump
python2 install.py 
autoload -U compinit && compinit

