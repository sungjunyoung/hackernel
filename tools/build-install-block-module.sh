#!/bin/bash
set +x

cd /root/linux-4.19.52
make -C . M=drivers/block -j $(nproc)
cp drivers/block/rbd.ko /lib/modules/4.19.52/kernel/drivers/block/
depmod

modprobe -r rbd
modprobe rbd