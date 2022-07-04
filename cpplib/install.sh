#!/bin/bash

echo "install cpp lib"
_SETUP_PATH=$(cd `dirname $0`; pwd)

for file in $_SETUP_PATH/*
do
  if [ -d "$file" ] # 文件夹
  then
    echo "$file/buildx"
    if [ -d "$file/buildx" ]
    then
      rm -rf $file/buildx
    fi
    mkdir $file/buildx
    cd $file/buildx
    cmake -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/opt/owner ..
    make -j4
    make install > .install_msg.txt
  fi
done
