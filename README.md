# hackernel

```bash
[host]$ cd hackernel
[host]$ vagrant up
```

## Kernel Upgrade
> .bashrc 및 .vimrc / tools 스크립트 가져오기, 커널 업그레이드
```bash
[host]$ vagrant ssh
[vagrant]$ sudo -i
[vagrant]$ sh /vagrant/setup.sh
[vagrant]$ ~/tools/kernel/1_build-install-kernel.sh # kernel build
[vagrant]$ ~/tools/kernel/2_update-grub.sh # grub update
[vagrant]$ ~/tools/kernel/3_copy-config.sh # kernel configuration copy
[vagrant]$ reboot
# ...
[host]$ vagrant ssh
[vagrant]$ uname -r
4.19.52
```

## Scripts
> 스크립트는 `/root/tools/` 디렉토리에 있습니다.

- **build-install-block-module.sh**
  - `/drivers/block` 모듈만 빌드 후 인스톨
  - block 아래의 코드만 수정한 후 적용해볼 수 있습니다.
- **disable-ceph-debug.sh**
  - ceph 커널 디버그 모드 비활성화
- **enable-ceph-debug.sh**
  - ceph 커널 디버그 모드 활성화
- **map-rbd.sh**
  - rbd map 수행
  - `/root/secrets/rbd-params` 파일에 `rbd map` 파라미터를 넣어주어야 합니다.
- **watch-dmesg.sh**
  - 커널 메시지 Watch
  
## ETC
- 스크립트를 업데이트 한 후에는 `[host]$ vagrant reload` & `[vagrant]$ sh /vagrant/setup.sh` 로 업데이트 할 수 있습니다.