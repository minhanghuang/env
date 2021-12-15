#!/bin/sh

set -e

/etc/init.d/ssh restart # 重启ssh

sh /startup.sh # dorowu/ubuntu-desktop-lxde-vnc:xenial entrypoint 这个需要放在最后

exec "$@"