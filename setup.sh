#!/bin/sh +x

cp /vagrant/bashrc /root/.bashrc
cp /vagrant/vimrc /root/.vimrc
cp -r /vagrant/tools /root/tools
chmod +x /root/tools/kernel/*
chmod +x /root/tools/*