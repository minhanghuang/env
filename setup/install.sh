#!/usr/bin/env bash

uNames=`uname -s`
osName=${uNames: 0: 4}

./node.js.sh

if [ "$osName" == "Darw" ] # Darwin
  then
    echo "Mac OS X"
    ./Homebrew.sh
    ./mac.setup.sh
elif [ "$osName" == "Linu" ] # Linux
  then
    echo "GNU/Linux"
    ./ubuntu.libs.sh
else
  echo "unknown os :" $osName
  exit 8
fi

./zsh.sh
# ./zsh.plugin.sh
