#!/bin/bash
set +x
set -e

cd /root/linux-4.19.52
make menuconfig
make -j $(nproc)
make modules_install
make install