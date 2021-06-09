#!/bin/sh

set -e

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

echo "=== Mao Registry === $@ ==="

sh /mao-garbage-collect.sh &

exec "$@"
