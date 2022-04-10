#!/bin/sh

set -e

/etc/init.d/ssh restart # 重启ssh

exec "$@"
