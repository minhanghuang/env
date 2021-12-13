#!/bin/sh

set -e

echo "123" |sudo -S sh /startup.sh #
echo "123" |sudo -S /etc/init.d/ssh restart # 重启ssh

exec "$@"