# hackernel

```bash
[host]$ cd hackernel
[host]$ vagrant up
```

## Set up 
> .bashrc 및 .vimrc / tools 스크립트 가져오기, 커널 업그레이드
```bash
[host]$ vagrant ssh
[vagrant]$ sudo -i
[vagrant]$ sh /vagrant/tools/setup/0_setup-env.sh
[vagrant]$ sh ~/tools/1_build-install-kernel.sh # kernel build
[vagrant]$ sh ~/tools/2_update-grub.sh # grub update
[vagrant]$ sh ~/tools/3_copy-config.sh # kernel configuration copy
[vagrant]$ reboot
# ...
[host]$ vagrant ssh
[vagrant]$ uname -r
4.19.52
```

## Scripts
> 스크립트는 `/root/tools/` 디렉토리에 있습니다.

- **install-ceph-common.sh**
  - ceph-common 패키지 인스톨
- **build-install-block-module.sh**
  - /drivers/block 모듈만 빌드 후 인스톨
- **enable-ceph-debug.sh**
  - ceph 커널 디버그 모드 활성화
- **disable-ceph-debug.sh**
  - ceph 커널 디버그 모드 비활성화
- **map-rbd.sh**
  - rbd map 수행
  - `/root/secrets/rbd-params` 파일에 `rbd map` 파라미터를 넣어주어야 합니다.
- **watch-dmesg.sh**
  - 커널 메시지 Watch