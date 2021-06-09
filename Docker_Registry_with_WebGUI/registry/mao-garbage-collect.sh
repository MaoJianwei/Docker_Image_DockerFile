#!/bin/sh

sleep 10
echo "=== Mao GC per 1 hour ==="

count=1
while true
do
    echo "=== Mao GC ${count} ==="
    registry garbage-collect /etc/docker/registry/config.yml
    count=$(( ${count} + 1 ))
    sleep 3600
done
