#!/bin/bash
set -e

docker run --name=ubuntu-gnome --it --rm \
    --tmpfs /run --tmpfs /run/lock --tmpfs /tmp \
    --cap-add SYS_BOOT --cap-add SYS_ADMIN \
    -v /sys/fs/cgroup:/sys/fs/cgroup \
    -p 5901:5901 -p 6901:6901 \
    gnome-shell-system-monitor-applet
