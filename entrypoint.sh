#!/bin/sh
set -e

echo "Successfully built and installed the wireguard kernel module!"

# shellcheck disable=SC2068
exec $@
