#!/usr/bin/env bash

### zsh-autosuggestions
wget https://github.com/zsh-users/zsh-autosuggestions/archive/refs/tags/v0.7.0.zip -O zsh-autosuggestions.zip
unzip -ojd ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions zsh-autosuggestions.zip

### zsh-syntax-highlighting
wget https://github.com/zsh-users/zsh-syntax-highlighting/archive/refs/tags/0.8.0.zip -O zsh-syntax-highlighting.zip
unzip -ojd ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting zsh-syntax-highlighting.zip

### zsh-completions
wget https://github.com/zsh-users/zsh-completions/archive/refs/tags/0.35.0.zip -O zsh-completions.zip
unzip -ojd ~/.oh-my-zsh/custom/plugins/zsh-completions zsh-completions.zip

### fzf
wget https://github.com/junegunn/fzf/archive/refs/tags/0.49.0.zip -O fzf.zip
unzip -ojd ~/.fzf fzf.zip
~/.fzf/install

### autojump
# wget https://github.com/wting/autojump/archive/refs/tags/release-v22.5.3.zip -O autojump.zip
# unzip -ojd ~/.oh-my-zsh/custom/plugins/autojump autojump.zip
# pushd ~/.oh-my-zsh/custom/plugins/autojump
# export PYTHONPATH=~/.autojump/:$PYTHONPATH && python3 install.py
# source ~/.zshrc && autoload -U compinit && compinit

git clone https://github.com/minhanghuang/autojump.git ~/.oh-my-zsh/custom/plugins/autojump
pushd ~/.oh-my-zsh/custom/plugins/autojump
git checkout perf-install-script
python3 install.py
# ./autoload -U compinit && compinit
