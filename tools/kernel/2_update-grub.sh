#!/bin/sh +x

set -e

grub2-mkconfig -o /boot/grub2/grub.cfg
awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg
grub2-set-default 0
grub2-editenv list