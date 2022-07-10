#!/bin/bash

uNames=`uname -s`
osName=${uNames: 0: 4}
if [ "$osName" == "Darw" ] # Darwin
then
	echo "Mac OS X"
  ./Homebrew.sh
  ./mac.setup.sh
elif [ "$osName" == "Linu" ] # Linux
then
	echo "GNU/Linux"
else
	echo "unknown os :" $osName
  exit 8
fi

./zsh.sh
