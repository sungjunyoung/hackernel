#!/bin/bash
set +x

echo 0 > /proc/sysrq-trigger

echo "module libceph -p" > /sys/kernel/debug/dynamic_debug/control
echo "module ceph -p" > /sys/kernel/debug/dynamic_debug/control
echo "module rbd -p" > /sys/kernel/debug/dynamic_debug/control