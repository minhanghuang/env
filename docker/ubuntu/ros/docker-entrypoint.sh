#!/bin/sh

set -e

echo "123" |sudo -S /etc/init.d/ssh restart # 重启ssh

exec "$@"