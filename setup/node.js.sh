#!/usr/bin/env bash
#
uNames=`uname -s`
osName=${uNames: 0: 4}

set -e

### install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 15.4.0
nvm alias default 15.4.0

### install npm
if [ "$osName" == "Darw" ] # macOS
  then
    echo "Mac OS X"
    brew install yarn npm
    npm config set http://registry.npmmirror.com
    yarn config set registry http://registry.npmmirror.com
elif [ "$osName" == "Linu" ] # Linux
  then
    echo "GNU/Linux"
    sudo apt update && sudo apt install -y npm
    npm config set https://registry.npmmirror.com
else
  echo "unknown os :" $osName
  exit 8
fi
