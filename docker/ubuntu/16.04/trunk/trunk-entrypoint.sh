#!/bin/sh

set -e

# base
echo "123" | sudo -S sh /opt/dockerfile/base-entrypoint.sh

# trunk


exec "$@"