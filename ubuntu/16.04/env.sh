#!/bin/sh

set -e

echo "Hello Ubuntu16.04"
cp sources.list /etc/apt/sources.list
cp pip.conf /home/trunk/.pip/pip.conf
apt-get update
apt install -y libgsl-dev cmake make g++ pkg-config autoconf automake iputils-ping  build-essential supervisor htop glances ntpdate chrony libtool python-pip python3-pip curl unzip wget zsh git vim sudo openssh-server

rm -rf /var/lib/apt/lists/*


exec "$@"